-- Do not use without my permission

local function CreateCircle( x, y, r, c )
	local circle = {}

	for i = 1, 360 do
		circle[ i ] = {}
		circle[ i ].x = x + math.cos( math.rad( i * 360 ) / 360 ) * r
		circle[ i ].y = y + math.sin( math.rad( i * 360 ) / 360 ) * r
	end

	draw.NoTexture()
	surface.SetDrawColor( c )
	surface.DrawPoly( circle )
end

local meta = FindMetaTable "Panel"

function meta:CircleClick( color, speed )
    local oldPaint = self.PaintOver
    local oldClick = self.OnMousePressed

    self.DrawCircle = false
    self.CircleColor = color
    self.GrowSpeed = speed
    self.Speed = 0
    self.mx = 0
    self.my = 0

    self.PaintOver = function( s, w, h )
        if oldPaint then
            oldPaint( s, w, h )
        end

        if self.DrawCircle then
            self.Speed = Lerp( self.GrowSpeed / 100, self.Speed, 255 )

            if self.Speed > 255 then
                self.DrawCircle = false
                self.Speed = 0
            end
        end

        if self.DrawCircle then
            CreateCircle( self.mx, self.my, self.Speed, Color( self.CircleColor.r, self.CircleColor.g, self.CircleColor.b, 255 - self.Speed ) )
        end
    end

    self.OnMousePressed = function( s, mouse )
        if oldClick then
            oldClick( s, mouse )
        end

        if !self.DrawCircle then
            self.DrawCircle = true
        else
            self.Speed = 0
        end

        self.mx, self.my = self:ScreenToLocal( gui.MousePos() )
    end
end
