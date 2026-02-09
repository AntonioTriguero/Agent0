---
name: bmad-agent-bmad-master
description: 'bmad-master agent'
prompt-reference: .agents/prompts/bmad-agent-bmad-master.md
user-invocable: True
metadata:
  prompt-location: .agents/prompts/bmad-agent-bmad-master.md
  prompt-size: 625
  prompt-modified: 1770372528.3141782
---

# bmad-agent-bmad-master

This skill references the original prompt file. Agents should read the prompt content from:

**Prompt Location:** `.agents/prompts/bmad-agent-bmad-master.md`

## How Agents Should Use This Skill

1. **Read this skill's metadata** to understand purpose and capabilities
2. **Locate the referenced prompt** using the `prompt-reference` field
3. **Read the prompt content** from the original file
4. **Execute instructions** from the prompt file
5. **Handle errors** if prompt file is missing or inaccessible

## Prompt Information

- **Original Location:** `.agents/prompts/bmad-agent-bmad-master.md`
- **File Size:** 625 bytes
- **Last Modified:** 1770372528.3141782
- **Source Directory:** .agents/prompts/

## Important Notes

- This skill does not contain the full prompt content
- Agents must read the referenced prompt file to get complete instructions
- If the prompt file is moved or deleted, this skill may not function correctly
- Always check the prompt modification date to ensure you have the latest version

## Troubleshooting

**Prompt file not found:**
- Check that the prompt file exists at the referenced location
- Verify file permissions allow reading
- Ensure the file path is correct relative to this skill's location

**Prompt content outdated:**
- Compare the modification date with your expectations
- Check if the prompt file has been updated since this skill was generated
