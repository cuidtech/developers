import React from 'react';
import './css/header.css';

type HeaderProps = {
    title: string;
};

// eslint-disable-next-line react/function-component-definition
const Header: React.FC<HeaderProps> = ({ title }) => {
    return (
        <header>
            <h1>{title}</h1>
        </header>
    );
};

export default Header;
