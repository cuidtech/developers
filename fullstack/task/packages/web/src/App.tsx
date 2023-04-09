import TableExchange from "./components/TableExchange";
import './dashboard.css';

function App() {
    // TODO: Add the FE for exchange rates here.

    return (
        <div className="dashboard-container">
            <div className="sidebar">
            </div>
            <div className="dashboard-content">
                <TableExchange />
            </div>
        </div>

    );
}

export default App;
