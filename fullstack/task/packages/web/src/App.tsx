import React, { useState } from 'react';
import CustomDatePicker from './Components/DatePicker';
import {ExchangeRatesTable} from './Components/ExchangeRatesTable';

function App() {
  const [selectedDate, setSelectedDate] = useState('');

  const handleDateSelect = (date: string) => {
    setSelectedDate(date);
  };

  return (
    <>
      <CustomDatePicker onSelectDate={handleDateSelect} />
      <ExchangeRatesTable selectedDate={selectedDate} />
    </>
  );
}

export default App;

