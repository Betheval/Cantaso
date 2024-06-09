import React from 'react';
import { Container, Row, Col } from 'react-bootstrap';

const Footer = () => {
    return (
        <footer className="bg-primary text-white py-4">
            <Container>
                <Row>
                    <Col md={6}>
                        <p>&copy; 2024 Cantaso. All rights reserved.</p>
                    </Col>
                    <Col md={6} className="text-md-right">
                        <a href="#contact" className="text-white">Contact</a>
                    </Col>
                </Row>
            </Container>
        </footer>
    );
};

export default Footer;
