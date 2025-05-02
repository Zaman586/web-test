const express = require('express');
const path = require('path');
const app = express();
const PORT = 3000;

// Serve static files from root
app.use(express.static(__dirname));

// Serve index.html on all unmatched routes
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`✅ Server is running on http://localhost:${PORT}`);
});

