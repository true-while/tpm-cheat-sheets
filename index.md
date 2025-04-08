---
layout: default
---
{% assign current_file = page.path | split: '/' | last | split: '.' | first %}
<small>Last Modified: {{ site.file_data[current_file] }}</small>


**One day** classes compared by technology:

- [AI](./docs/ai-table.html)
- [ML](./docs/ml-table.html)
- [Data](./docs/dp-table.html)
- [Copilot](./docs/copilot-table.html)
- [Infra](./docs/admin-table.html)
- [Dev & DevOps](./docs/dev-table.html)
- [Security](./docs/security-table.html)   
     
**ARB** classes compared by technology:

- [Data](./docs/dp-table-arb.html)

**One day** vs **ARB** classes comparing by technology:     
   
- [Infra](./docs/admin-compare.html)


**Site File Data:**

<ul>
  {% for item in site.file_data %}
    <li><strong>{{ item[0] }}</strong>: {{ item[1] }}</li>
  {% endfor %}
</ul>


