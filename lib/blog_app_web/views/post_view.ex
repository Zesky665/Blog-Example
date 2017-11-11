defmodule BlogAppWeb.PostView do
  use BlogAppWeb, :view

  def as_html(txt) do
    txt
    |> Earmark.as_html!
    |> raw
  end
  
end
