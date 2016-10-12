// DH ZipForge Manager 0.6
// (C) Doddy Hackman 2016

unit DH_ZipForge_Manager;

interface

Uses
  SysUtils, ZipForge, Classes;

type
  other_array_zipman = array of string;

  T_DH_ZipForge_Manager = class
  private
  public
    constructor Create;
    destructor Destroy; override;
    function compress_file(zip_file, zip_comment, zip_pass, filename_to_save
      : string): boolean;
    function compress_directory(zip_file, zip_comment, zip_pass,
      directory: string): boolean;
    function compress_files(zip_file, zip_comment, zip_pass: string;
      paths: other_array_zipman): boolean;
    function delete_file_in_zip(zip_file, zip_pass, filename_to_delete
      : string): boolean;
    function decompress_zip(zip_file, zip_pass, path: string): boolean;
  end;

implementation

constructor T_DH_ZipForge_Manager.Create;
begin
  inherited Create;
  //
end;

destructor T_DH_ZipForge_Manager.Destroy;
begin
  inherited Destroy;
end;

function T_DH_ZipForge_Manager.compress_file(zip_file, zip_comment, zip_pass,
  filename_to_save: string): boolean;
var
  zip_compress: TZipForge;
begin

  if (FileExists(filename_to_save)) then
  begin
    try
      begin
        zip_compress := TZipForge.Create(nil);

        with zip_compress do
        begin
          filename := zip_file;
          Password := zip_pass;
          if (FileExists(zip_file)) then
          begin
            OpenArchive(fmOpenReadWrite);
          end
          else
          begin
            OpenArchive(fmCreate);
          end;
          Comment := zip_comment;
          BaseDir := ExtractFilePath(filename_to_save);
          AddFiles(filename_to_save);
          CloseArchive();
        end;

        zip_compress.Free();

        Result := True;

      end;
    except
      begin
        Result := False;
      end;
    end;
  end
  else
  begin
    Result := False;
  end;
end;

function T_DH_ZipForge_Manager.compress_directory(zip_file, zip_comment,
  zip_pass, directory: string): boolean;
var
  zip_compress: TZipForge;
begin

  if (DirectoryExists(directory)) then
  begin
    try
      begin
        zip_compress := TZipForge.Create(nil);

        with zip_compress do
        begin
          filename := zip_file;
          Password := zip_pass;
          if (FileExists(zip_file)) then
          begin
            OpenArchive(fmOpenReadWrite);
          end
          else
          begin
            OpenArchive(fmCreate);
          end;
          Comment := zip_comment;
          BaseDir := ExtractFilePath(directory);
          AddFiles(directory + '\*.*');
          CloseArchive();
        end;

        zip_compress.Free();

        Result := True;
      end;
    except
      begin
        Result := False;
      end;
    end;
  end
  else
  begin
    Result := False;
  end;

end;

function T_DH_ZipForge_Manager.compress_files(zip_file, zip_comment,
  zip_pass: string; paths: other_array_zipman): boolean;
var
  path: string;
  i: integer;
begin
  if not(zip_file = '') then
  begin
    For i := Low(paths) to High(paths) do
    begin
      path := paths[i];
      if (FileExists(path)) then
      begin
        compress_file(zip_file, zip_comment, zip_pass, path);
      end;
      if (DirectoryExists(path)) then
      begin
        compress_directory(zip_file, zip_comment, zip_pass, path);
      end;
    end;
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function T_DH_ZipForge_Manager.delete_file_in_zip(zip_file, zip_pass,
  filename_to_delete: string): boolean;
var
  zip_compress: TZipForge;
begin

  if (FileExists(zip_file)) then
  begin
    try
      begin
        zip_compress := TZipForge.Create(nil);

        with zip_compress do
        begin
          filename := zip_file;
          Password := zip_pass;
          OpenArchive(fmOpenReadWrite);
          DeleteFiles(filename_to_delete);
          CloseArchive();
        end;

        zip_compress.Free();

        Result := True;

      end;
    except
      begin
        Result := False;
      end;
    end;
  end
  else
  begin
    Result := False;
  end;
end;

function T_DH_ZipForge_Manager.decompress_zip(zip_file, zip_pass,
  path: string): boolean;
var
  zip_decompress: TZipForge;
begin
  if (FileExists(zip_file)) then
  begin
    try
      begin
        zip_decompress := TZipForge.Create(nil);

        if not(DirectoryExists(path)) then
        begin
          CreateDir(path);
        end;

        with zip_decompress do
        begin
          filename := zip_file;
          Password := zip_pass;
          OpenArchive(fmOpenRead);
          BaseDir := path;
          ExtractFiles('*.*');
          CloseArchive();
        end;

        zip_decompress.Free();
        Result := True;
      end;
    except
      begin
        Result := False;
      end;
    end;
  end;
end;

end.

// The End ?
