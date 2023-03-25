import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.css';

// DATA TYPES REQUIRED 
type ExchangeRate = {
    country: string;
    currency: string;
    amount: number,
    code: string,
    rate: GLfloat;
  };

// Search block
type SearchProps = {
  search: string;
  onSearch: (event: React.ChangeEvent<HTMLInputElement>) => void;
};

// Data table block
type ExchangeTableProps = {
  exchangeData: ExchangeRate[]
}

const Search = ({ search, onSearch } : SearchProps) => (
  <div className='p-4'>
    <label htmlFor="search">Search by country: </label>
    <input
      id="search"
      type="text"
      value={search}
      onChange={onSearch}
    />
  </div>
);

const ExchangeTable = ({exchangeData} : ExchangeTableProps) => (
  <table className='w-full'>
    <thead>
      <tr className="font-sans-serif">
        <th>Country</th>
        <th>Currency</th>
        <th>Amount</th>
        <th>Code</th>
        <th>Rate</th>
      </tr>
    </thead>
    <tbody className='bg-gray-light text-blue-dark'>
      {exchangeData.map(rate => (
        <tr key={rate.country}>
          <td className='px-2 w-1/5'>{rate.country}</td>
          <td className='px-2 w-1/5'>{rate.currency}</td>
          <td className='px-2 w-1/5'>{rate.amount}</td>
          <td className='px-2 w-1/5'>{rate.code}</td>
          <td className='px-2 w-1/5'>{rate.rate}</td>
        </tr>
      ))}
    </tbody>
  </table>
);

function App() {
  // state handlers
  const [exchangeRates, setExchangeRates] = useState<ExchangeRate[]>([]);
  const [searchTerm, setSearchTerm] = useState(
    localStorage.getItem('search') || ''
  );
  const [isLoading, setIsLoading] = useState(false);
  const [isError, setIsError] = useState(false);

  useEffect(() => {
    localStorage.setItem('search', searchTerm);
  }, [searchTerm]);
  
  const handleSearch = (event: React.ChangeEvent<HTMLInputElement>) => {
    setSearchTerm(event.target.value);
  };

  const searchedExchanges = exchangeRates.filter((exchangeRateLine) =>
  exchangeRateLine.country.toLowerCase().includes(searchTerm.toLowerCase())
  );

  useEffect(() => {
    setIsLoading(true);
    axios.post(import.meta.env.VITE_BACKEND_URL, {
      query: `
        query {
          exchangeRates {
            country
            currency
            amount
            code
            rate
          }
        }
      `
    })
    .then(response => {
      setExchangeRates(response.data.data.exchangeRates);
      setIsLoading(false);
    })
    .catch(error => {
      console.log(error);
      setIsError(true);
      setIsLoading(false);
    });
  }, []);

  return (
    <div className="App container my-2 text-white">
      <img className="my-2 max-w-xs" src="https://www.cnb.cz/export/system/modules/cz.nelasoft.opencms.cnb/resources/img/LOGO-2RA_RGB.svg" />
      <div className="bg-blue-dark">
        <h1 className="text-lg font-bold text-center">Czech National Bank Daily Exchange Rates</h1>
        <Search search={searchTerm} onSearch={handleSearch} />
        <hr />
        {isError ? (isLoading ? <p className='p-2'>unknown error</p> : <p className='p-2'> error fetching data</p>) :
                  (isLoading ? <p className='p-2'>Fetching data..</p> : <ExchangeTable exchangeData={searchedExchanges}/>)
        }
      </div>
    </div>
  );
}

export default App;
