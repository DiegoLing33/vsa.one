import Head from 'next/head'
import {Col, Container, Row} from "react-bootstrap";

export default function Home() {
  return (
    <div>
      <Head>
        <title>Vettrisa</title>
      </Head>

      <Container>
          <Row>
              <Col md={{offset: 2, span: 8}} className={"d-flex align-items-center justify-content-center vh-100"}>
                  <img style={{width: '100%'}} src={'/vsa.png'}/>
              </Col>
          </Row>
      </Container>

    </div>
  )
}
