import React from 'react';
import { Container, Row, Col } from 'react-bootstrap';

const Features = () => {
    return (
        <Container id="features" className="my-5">
            <h2 className="text-center mb-4">Our Features</h2>
            <Row>
                <Col md={4}>
                    <h3>High Quality</h3>
                    <p>We offer services of the highest quality for our clients.</p>
                </Col>
                <Col md={4}>
                    <h3>24/7 Support</h3>
                    <p>We are available for you at any time of the day.</p>
                </Col>
                <Col md={4}>
                    <h3>Customized Solutions</h3>
                    <p>We tailor our solutions to meet your needs.</p>
                </Col>
            </Row>
        </Container>
    );
};

export default Features;
