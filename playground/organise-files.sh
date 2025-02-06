dir="$1"

if [ -z "$dir" ]; then
    echo "No directory provided"
    exit 1
fi

if [ ! -d "$dir" ]; then
    echo "directory doesn't exist"
    exit 1
fi

read -p "Choose new directory name for organisation..." new_dir

mkdir "$new_dir"

mkdir "$new_dir/text" "$new_dir/images" "$new_dir/scripts" "$new_dir/sounds" "$new_dir/videos" "$new_dir/rest"

for file in "$new_dir"/*; do
    echo "$file"
    if [ -f "$file" ]; then
        case "$file" in
            *.txt)
                mv "$file" "$new_dir/text/"
                ;;
            *.jpg)
                mv "$file" "$new_dir/images/"
                ;;
            *.png)
                mv "$file" "$new_dir/images/"
                ;;
            *.sh)
                mv "$file" "$new_dir/scripts/"
                ;;
            *.mp3)
                mv "$file" "$new_dir/sounds/"
                ;;
            *.mp4)
                mv "$file" "$new_dir/videos/"
                ;;
            *)
                mv "$file" "$new_dir/rest/"
                ;;
        esac
    fi 
done

echo "Organisation complete"

