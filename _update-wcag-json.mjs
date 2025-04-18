import { writeFile } from "fs/promises";

const wcagUrl = "https://www.w3.org/WAI/WCAG22/wcag.json";

const wcag22 = await fetch(wcagUrl).then((response) => {
  if (response.status >= 400)
    throw new Error(`HTTP error code received: ${response.status}`);
  return response.json();
});

const data = [];
for (const principle of wcag22.principles) {
  for (const guideline of principle.guidelines) {
    for (const criterion of guideline.successcriteria) {
      data.push({
        desc: criterion.content,
        key: criterion.num,
        level: criterion.level,
        slug: criterion.id,
        title: criterion.handle,
      });
    }
  }
}

await writeFile("wcag22.json", JSON.stringify(data, null, "    ") + "\n");
