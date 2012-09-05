function! LoadRope()
if has("python")
python << EOF
try:
    import ropevim
except ImportError: 
    pass
EOF
endif
endfunction

call LoadRope()
