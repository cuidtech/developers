import React from 'react';
import { HomeOutlined } from '@ant-design/icons';
import KorunaIcon from '../../assets/icons/koruna.svg';
import { INavElement } from '../../ts/interfaces/nav-element.interface';

export const navElements: INavElement[] = [
    {
        key: '1',
        icon: () => React.createElement(HomeOutlined),
        label: 'Home',
        link: '/',
    },
    {
        key: '2',
        icon: () => <img src={KorunaIcon} width="18px" alt="Koruna Icon" />,
        label: 'Exchange Rates',
        link: '/exchange-rates',
    },
];
