import { Button, Carousel, Typography } from 'antd';
import { useNavigate } from 'react-router-dom';
import HomeImage from '../../assets/images/home.svg';
import { CAROUSEL_CONTENT } from './carousel-content/index';
import './index.css';

const { Title } = Typography;

function index() {
    const navigate = useNavigate();

    const handleButtonClick = () => {
        navigate('/exchange-rates');
    };

    return (
        <>
            <Carousel autoplay centerMode dots={false} centerPadding="0px">
                {CAROUSEL_CONTENT.map((content) => (
                    <div key={content.id} className="carousel-content">
                        <Title level={1}>{content.title}</Title>
                        <p>{content.description}</p>
                    </div>
                ))}
            </Carousel>
            <div className="button-wrapper">
                <Button type="primary" onClick={handleButtonClick} size="large">
                    View Exchange Rates
                </Button>
            </div>
            <div className="image-wrapper">
                <img src={HomeImage} alt="Exchange Rate Home" />
            </div>
        </>
    );
}

export default index;
