import React, { Component, Suspense } from 'react';
import { useTranslation, withTranslation, Trans } from 'react-i18next';
import logo from './logo.svg';
import './App.css';

// use hoc for class based components
// class LegacyWelcomeClass extends Component {
//   render() {
//     const { t, i18n } = this.props;
//     return <h2>{t('title')}</h2>;
//   }
// }
// const Welcome = withTranslation()(LegacyWelcomeClass);

// Component using the Trans component
function MyComponent() {
  return (
    <Trans i18nKey="description.part1">
      <p>To get started, edit <code>src/App.js</code> and save to reload.</p>
    </Trans>
  );
}

// page uses the hook
function Page() {
  const { t, i18n } = useTranslation();

  const changeLanguage = lng => {
    i18n.changeLanguage(lng);
  };
  return (
    <div className="App">
      <Suspense fallback={<Loader />}>
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          {/* <Welcome /> */}
          <button onClick={() => changeLanguage('de')}>German</button>
          <button onClick={() => changeLanguage('en')}>English</button>
          <MyComponent />
          <div>{t('description.part2')}</div>
        </div>           
      </Suspense>
    </div>
  );
}
// loading component for suspence fallback
const Loader = () => (
  <div className="App">
    <img src={logo} className="App-logo" alt="logo" />
    <div>loading...</div>
  </div>
);

// here app catches the suspense from page in case translations are not yet loaded
export default function App() {
  return (
    <Suspense fallback={<Loader />}>
      <Page />
    </Suspense>
  );
}

// class App extends Component {
//   render() {
//     return (
//       <div className="App">
//         <header className="App-header">
//           <img src={logo} className="App-logo" alt="logo" />
//           <p>
//             Edit <code>src/App.js</code> and save to reload.
//           </p>
//           <a
//             className="App-link"
//             href="https://reactjs.org"
//             target="_blank"
//             rel="noopener noreferrer"
//           >
//             Learn React
//           </a>
//         </header>
//       </div>
//     );
//   }
// }

// export default App;
