import * as React from 'react'
import { Link } from 'react-router-dom'
import { Table, Button } from 'reactstrap'

// The interface for our API response
interface ApiResponse {
  data: Language[]
}

// The interface for our Language model.
interface Language {
  id: number
  name: string
  proverb: string
}

interface FetchDataExampleState {
  languages: Language[]
  loading: boolean
}

export default class FetchData extends React.Component<{}, FetchDataExampleState> {
  constructor(props) {
    super(props)
    this.state = { languages: [], loading: true }

    // Get the data from our API.
    fetch('/api/languages')
      .then((response) => response.json() as Promise<ApiResponse>)
      .then((data) => {
        this.setState({ languages: data.data, loading: false })
      })
  }

  private static renderLanguagesTable(languages: Language[]) {
    return (
      <Table>
        <thead>
          <tr>
            <th>Language</th>
            <th>Example proverb</th>
          </tr>
        </thead>
        <tbody>
          {languages.map((language) =>
            <tr key={language.id}>
              <td>{language.name}</td>
              <td>{language.proverb}</td>
            </tr>
          )}
        </tbody>
      </Table>
    )
  }

  public render(): JSX.Element {
    const content = this.state.loading
      ? <p><em>Loading...</em></p>
      : FetchData.renderLanguagesTable(this.state.languages)

    return (
      <div>
        <h1>Fetch Data</h1>
        <p>This component demonstrates fetching data from the Phoenix API endpoint.</p>
        {content}
        <br /><br />
        <p><Link to="/">Back to home</Link></p>
      </div>
    )
  }
}
