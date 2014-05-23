timezone Cookbook
=================
Basic cookbook to set the time zone in Ubuntu

Attributes
----------

#### timezone::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['timezone']</tt></td>
    <td>String</td>
    <td>Timezone to set</td>
    <td><tt>None</tt></td>
  </tr>
</table>

Usage
-----
#### timezone::default
Just include `timezone` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[timezone]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Shrikant Patnaik
