.class public final LG0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/a;->a:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static final synthetic a(LG0/a;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, LG0/a;->a:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static final synthetic b(LG0/a;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, LG0/a;->d()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, LG0/a;->a:Ljava/lang/ClassLoader;

    const-string v1, "androidx.window.extensions.WindowExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loader.loadClass(WindowE\u2026.WINDOW_EXTENSIONS_CLASS)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, LG0/a;->a:Ljava/lang/ClassLoader;

    const-string v1, "androidx.window.extensions.WindowExtensionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loader.loadClass(WindowE\u2026XTENSIONS_PROVIDER_CLASS)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Z
    .locals 2

    sget-object v0, LP0/a;->a:LP0/a;

    new-instance v1, LG0/a$a;

    invoke-direct {v1, p0}, LG0/a$a;-><init>(LG0/a;)V

    invoke-virtual {v0, v1}, LP0/a;->a(Lu3/a;)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    invoke-virtual {p0}, LG0/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LG0/a$b;

    invoke-direct {v0, p0}, LG0/a$b;-><init>(LG0/a;)V

    const-string v1, "WindowExtensionsProvider#getWindowExtensions is not valid"

    invoke-static {v1, v0}, LP0/a;->e(Ljava/lang/String;Lu3/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
