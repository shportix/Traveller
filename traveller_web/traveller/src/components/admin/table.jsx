import React from "react";

function Table(props) {
// props: colums -> ["name1", "name2"], rows -> [["cell1", "cell2"], ["cell1", "cell2"]]

  const generateColumns = () => {
    return props.columns.map(column => <th>{ column }</th>);
  }

  const generateRows = () => {
    return props.rows.map(row => {
      return (<tr>
        {row.map(cell => <td>{cell}</td>)}
      </tr>)
    });
  }

  return (
    <div>
      <table className="table">
        <tr>
          {generateColumns()}
        </tr>
        <tbody>
          {generateRows()}
        </tbody>
      </table>
    </div>
  );
}

export default Table;