import React from 'react';
import { Layout, Menu, theme } from 'antd';
import { Link } from 'react-router-dom';
import { navElements } from './navElements';
import './index.css';

const { Header, Content, Footer, Sider } = Layout;

interface IProps {
    children: React.ReactNode;
}

function Main({ children }: IProps) {
    const {
        token: { colorBgContainer },
    } = theme.useToken();

    return (
        <Layout className="layout">
            <Sider breakpoint="lg" collapsedWidth="0">
                <Menu theme="dark" mode="inline" className="layout__sidemenu">
                    {navElements.map((navElement) => (
                        <Menu.Item key={navElement.key} icon={navElement.icon()}>
                            <Link to={navElement.link}>{navElement.label}</Link>
                        </Menu.Item>
                    ))}
                </Menu>
            </Sider>
            <Layout>
                <Header className="layout__header" style={{ background: colorBgContainer }}>
                    <Menu theme="dark" mode="horizontal">
                        <h1 className="layout__title">Czexchange </h1>
                    </Menu>
                </Header>
                <Content className="layout__content">
                    <div
                        className="layout__content--children"
                        style={{ background: colorBgContainer }}
                    >
                        {children}
                    </div>
                </Content>
                <Footer className="layout__footer">
                    Czexchange ©2023 Created by{' '}
                    <a
                        href="https://github.com/JesusCamaRay"
                        target="_blank"
                        rel="noopener noreferrer"
                    >
                        @JesusCamaRay
                    </a>
                </Footer>
            </Layout>
        </Layout>
    );
}

export default Main;
