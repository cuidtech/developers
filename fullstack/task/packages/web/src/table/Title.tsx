import * as React from 'react';
import Typography from '@mui/material/Typography';

interface TitleProps {
    children?: React.ReactNode;
}

export default function Title(props: TitleProps) {
    return (
        <Typography component="h1" variant="h3" color="primary" gutterBottom>
            {props.children}
        </Typography>
    );
}
