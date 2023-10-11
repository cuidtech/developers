/** @jsxRuntime classic */
/** @jsx jsx */
import { css, jsx } from '@emotion/react';
import { Size } from '../types/Size';

const sizeMap = {
    s: 15,
    m: 40,
    l: 120,
};

function Loader(props: { size: Size }) {
    const { size } = props;
    return (
        <div
            css={css`
                border: ${sizeMap[size] / 5}px solid #f3f3f3;
                border-top: ${sizeMap[size] / 5}px solid #3498db;
                border-radius: 50%;
                width: ${sizeMap[size]}px;
                height: ${sizeMap[size]}px;
                animation: spin 2s linear infinite;

                @keyframes spin {
                    0% {
                        transform: rotate(0deg);
                    }
                    100% {
                        transform: rotate(360deg);
                    }
                }
            `}
        />
    );
}

export default Loader;
