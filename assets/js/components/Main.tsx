import * as React from 'react';

const Main: React.FC = ({ children }) => (
  <main role="main" className="container">
    {children}
  </main>
);

export default Main;
