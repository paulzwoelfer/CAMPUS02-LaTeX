add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
}
add_cus_dep('acn', 'acr', 0, 'makeacn2acr');
sub makeacn2acr {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.alg -o '$_[0]'.acr '$_[0]'.acn");
}
$cleanup_includes_generated = 1;
$clean_ext = "acn acr alg bbl glg glo gls ist nav snm tdo fls";
$pdf_mode = 1;
@default_files = ("masterthesis", "presentation");

