with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;     use Ada.Float_Text_IO;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure PlayList is

    type Person is record
        name : Unbounded_String;
    end record;

    procedure Put_Person (p : Person) is
    begin
        Put (To_String (p.name));
    end Put_Person;

    type Item_Variant is (Piece, Pause);

    type Item (Variant : Item_Variant) is record
        case Variant is
            when Piece =>
                name        : Unbounded_String;
                performer   : Person;
                length_secs : Float;
            when Pause =>
                length_secs : Float;
        end case;
    end record;

    procedure Put_Item (i : Item) is
    begin
        case i.Variant is
            when Piece =>
                Put ("Piece: ");
                Put (To_String (i.name));
                Put (" by ");
                Put_Person (i.performer);
                Put (" (");
                Put (i.length_secs, aft => 1, exp => 0);
                Put_Line ("s)");
            when Pause =>
                Put ("Pause: ");
                Put ("Length: ");
                Put (i.length_secs, aft => 1, exp => 0);
                Put_Line ("s");
        end case;
    end Put_Item;

    piece1 : Item (Piece) :=
       (name => To_Unbounded_String ("Moonlight Sonata"),
        performer => (name => To_Unbounded_String ("Claudio Arrau")),
        length_secs => 17.0*60.0+26.0
       );

    pause1 : Item (Pause) :=
        (
         length_secs => 5.0
        );

begin
    Put_Item (piece1);
    New_Line;
    Put_Item(pause1);
    New_Line;
end PlayList;