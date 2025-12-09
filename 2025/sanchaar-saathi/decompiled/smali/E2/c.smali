.class public LE2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/l;


# static fields
.field public static final m:I

.field public static final n:I


# instance fields
.field public final c:Landroid/app/Activity;

.field public d:LY2/j$d;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:[Ljava/lang/String;

.field public k:LY2/c$b;

.field public l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, LE2/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    const v2, 0xffff

    and-int/2addr v1, v2

    sput v1, LE2/c;->m:I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x53

    and-int/2addr v0, v2

    sput v0, LE2/c;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LE2/c;-><init>(Landroid/app/Activity;LY2/j$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;LY2/j$d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LE2/c;->e:Z

    .line 4
    iput-boolean v0, p0, LE2/c;->f:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LE2/c;->h:Z

    const/16 v0, 0x14

    .line 6
    iput v0, p0, LE2/c;->i:I

    .line 7
    iput-object p1, p0, LE2/c;->c:Landroid/app/Activity;

    .line 8
    iput-object p2, p0, LE2/c;->d:LY2/j$d;

    return-void
.end method

.method public static synthetic a(LE2/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LE2/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LE2/c;)Z
    .locals 0

    iget-boolean p0, p0, LE2/c;->h:Z

    return p0
.end method

.method public static synthetic c(LE2/c;)I
    .locals 0

    iget p0, p0, LE2/c;->i:I

    return p0
.end method

.method public static synthetic d(LE2/c;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, LE2/c;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic e(LE2/c;)Z
    .locals 0

    iget-boolean p0, p0, LE2/c;->f:Z

    return p0
.end method

.method public static synthetic f(LE2/c;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, LE2/c;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(LE2/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE2/c;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(LE2/c;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, LE2/c;->o(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(LE2/c;)LY2/c$b;
    .locals 0

    iget-object p0, p0, LE2/c;->k:LY2/c$b;

    return-object p0
.end method

.method public static l(LY2/j$d;)V
    .locals 3

    const-string v0, "File picker is already active"

    const/4 v1, 0x0

    const-string v2, "already_active"

    invoke-interface {p0, v2, v0, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LE2/c;->d:LY2/j$d;

    return-void
.end method

.method public final k(Z)V
    .locals 2

    iget-object v0, p0, LE2/c;->k:LY2/c$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, LE2/c;->g:Ljava/lang/String;

    const-string v1, "dir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LE2/c$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LE2/c$b;-><init>(LE2/c;Landroid/os/Looper;Z)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LE2/c;->d:LY2/j$d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LE2/c;->k(Z)V

    iget-object v0, p0, LE2/c;->d:LY2/j$d;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LE2/c;->j()V

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LE2/c;->k(Z)V

    iget-object v0, p0, LE2/c;->d:LY2/j$d;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE2/a;

    invoke-virtual {v1}, LE2/a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    iget-object v0, p0, LE2/c;->d:LY2/j$d;

    invoke-interface {v0, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, LE2/c;->j()V

    :cond_2
    return-void
.end method

.method public final o(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "selectedItems"

    if-lt v0, v1, :cond_0

    const-class v0, Landroid/os/Parcelable;

    invoke-static {p1, v2, v0}, LE2/b;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    sget v0, LE2/c;->n:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "FilePickerDelegate"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_2

    if-nez p3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0, v5}, LE2/c;->k(Z)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LE2/c;->c:Landroid/app/Activity;

    invoke-static {p1, v0}, LE2/e;->f(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    iget-object v0, p0, LE2/c;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, LE2/c;->l:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, LE2/c;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :goto_1
    const-string p3, "Error while saving file"

    invoke-static {v3, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LE2/c;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "User cancelled the save request"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, LE2/c;->n(Ljava/lang/Object;)V

    :cond_3
    return v4

    :cond_4
    iget-object v0, p0, LE2/c;->g:Ljava/lang/String;

    if-nez v0, :cond_5

    return v4

    :cond_5
    sget v0, LE2/c;->m:I

    if-ne p1, v0, :cond_6

    if-ne p2, v2, :cond_6

    invoke-virtual {p0, v5}, LE2/c;->k(Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, LE2/c$a;

    invoke-direct {p2, p0, p3}, LE2/c$a;-><init>(LE2/c;Landroid/content/Intent;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return v5

    :cond_6
    if-ne p1, v0, :cond_7

    if-nez p2, :cond_7

    const-string p1, "User cancelled the picker request"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, LE2/c;->n(Ljava/lang/Object;)V

    return v5

    :cond_7
    if-ne p1, v0, :cond_8

    const-string p1, "unknown_activity"

    const-string p2, "Unknown activity error, please fill an issue."

    invoke-virtual {p0, p1, p2}, LE2/c;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v4
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[BLY2/j$d;)V
    .locals 1

    invoke-virtual {p0, p6}, LE2/c;->r(LY2/j$d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, LE2/c;->l(LY2/j$d;)V

    return-void

    :cond_0
    new-instance p6, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iput-object p5, p0, LE2/c;->l:[B

    if-eqz p2, :cond_2

    const-string p1, "dir"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 p5, 0x1

    if-ne p1, p5, :cond_2

    invoke-virtual {p6, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "*/*"

    invoke-virtual {p6, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "android.provider.extra.INITIAL_URI"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    if-eqz p4, :cond_4

    array-length p1, p4

    if-lez p1, :cond_4

    const-string p1, "android.intent.extra.MIME_TYPES"

    invoke-virtual {p6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object p1, p0, LE2/c;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p6, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, LE2/c;->c:Landroid/app/Activity;

    sget p2, LE2/c;->n:I

    invoke-virtual {p1, p6, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    const-string p1, "FilePickerDelegate"

    const-string p2, "Can\'t find a valid activity to handle the request. Make sure you\'ve a file explorer installed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "invalid_format_type"

    const-string p2, "Can\'t handle the provided file type."

    invoke-virtual {p0, p1, p2}, LE2/c;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public q(LY2/c$b;)V
    .locals 0

    iput-object p1, p0, LE2/c;->k:LY2/c$b;

    return-void
.end method

.method public final r(LY2/j$d;)Z
    .locals 1

    iget-object v0, p0, LE2/c;->d:LY2/j$d;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, LE2/c;->d:LY2/j$d;

    const/4 p1, 0x1

    return p1
.end method

.method public final s()V
    .locals 5

    iget-object v0, p0, LE2/c;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "dir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FilePickerDelegate"

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, LE2/c;->g:Ljava/lang/String;

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LE2/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, LE2/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, LE2/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    iget-boolean v3, p0, LE2/c;->e:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "multi-pick"

    iget-boolean v3, p0, LE2/c;->e:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, LE2/c;->g:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, LE2/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LE2/c;->j:[Ljava/lang/String;

    :cond_3
    iget-object v2, p0, LE2/c;->j:[Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_1
    iget-object v2, p0, LE2/c;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v1, p0, LE2/c;->c:Landroid/app/Activity;

    sget v2, LE2/c;->m:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_5
    const-string v0, "Can\'t find a valid activity to handle the request. Make sure you\'ve a file explorer installed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "invalid_format_type"

    const-string v1, "Can\'t handle the provided file type."

    invoke-virtual {p0, v0, v1}, LE2/c;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public t(Ljava/lang/String;ZZ[Ljava/lang/String;ZILY2/j$d;)V
    .locals 1

    invoke-virtual {p0, p7}, LE2/c;->r(LY2/j$d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p7}, LE2/c;->l(LY2/j$d;)V

    return-void

    :cond_0
    iput-object p1, p0, LE2/c;->g:Ljava/lang/String;

    iput-boolean p2, p0, LE2/c;->e:Z

    iput-boolean p3, p0, LE2/c;->f:Z

    iput-object p4, p0, LE2/c;->j:[Ljava/lang/String;

    iput p6, p0, LE2/c;->i:I

    iput-boolean p5, p0, LE2/c;->h:Z

    invoke-virtual {p0}, LE2/c;->s()V

    return-void
.end method
