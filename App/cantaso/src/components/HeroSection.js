import React from 'react';
import { Container, Row, Col } from 'react-bootstrap';

const HeroSection = () => {
  return (
    <div
      style={{
        backgroundImage: 'url(https://media.istockphoto.com/id/959149062/es/foto/taxi-de-nueva-york-en-un-puente.webp?s=2048x2048&w=is&k=20&c=O-xmg8Uzq1fCw7vT0eg5J8Th0g-icvw8Fc0iCtR-pA0=)',
        backgroundSize: 'cover',
        color: 'white',
        height: '80vh',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center'
      }}
    >
      <Container
        style={{
          backgroundColor: 'rgba(0, 0, 0, 0.5)',
          padding: '2rem',
          borderRadius: '10px'
        }}
      >
        <Row>
          <Col>
            <h1>Welcome to Cantaso</h1>
            <p>Your professional solution for all technological needs.</p>
          </Col>
        </Row>
      </Container>
    </div>
  );
};

export default HeroSection;
