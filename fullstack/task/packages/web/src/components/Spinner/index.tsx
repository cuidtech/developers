import { PropsWithChildren } from 'react';
import './Spinner.css';

// eslint-disable-next-line react/function-component-definition
const Spinner = ({ children }: PropsWithChildren) => {
    return (
        <div className="loading-container">
            <div className="spinner" />
            <p className="loading-message">{children}</p>
        </div>
    );
};

export default Spinner;
