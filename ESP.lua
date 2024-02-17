local Players = game:GetService("Players")

local function highlightPlayer(player)
  -- Create a new Highlight object
  local highlight = Instance.new("Highlight")

  -- Set the adornee of the Highlight to the player's character
  highlight.Adornee = player.Character

  -- Set the color of the Highlight
  highlight.FillColor = Color3.fromRGB(255, 0, 0)
  highlight.OutlineColor = Color3.fromRGB(0, 0, 0)

  -- Parent the Highlight to the player's character
  highlight.Parent = player.Character
end

-- Loop through all the players
for _, player in pairs(Players:GetPlayers()) do
  -- Highlight the player
  highlightPlayer(player)
end
