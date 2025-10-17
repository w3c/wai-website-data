import { writeFile } from "fs/promises";

const wcagUrl = "https://www.w3.org/WAI/WCAG22/wcag.json";

const wcag22 = await fetch(wcagUrl).then((response) => {
  if (response.status >= 400)
    throw new Error(`HTTP error code received: ${response.status}`);
  return response.json();
});

const data = {
  principles: [],
  guidelines: [],
  successcriteria: [],
};

for (const principle of wcag22.principles) {
  for (const guideline of principle.guidelines) {
    for (const criterion of guideline.successcriteria) {
      data.successcriteria.push(criterion);
    }
    delete guideline.successcriteria;
    data.guidelines.push(guideline);
  }
  delete principle.guidelines;
  data.principles.push(principle);
}

try {
  const filename = "wcag22.json";
  await writeFile(filename, JSON.stringify(data, null, "    ") + "\n");
  console.log(`${filename} generated successfully.`);
} catch (err) {
  console.error(err);
}
