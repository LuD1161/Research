.class public final Lf0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lu3/l;

.field public final c:LD3/I;

.field public final d:Ljava/lang/Object;

.field public volatile e:Lc0/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ld0/b;Lu3/l;LD3/I;)V
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "produceMigrations"

    invoke-static {p3, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scope"

    invoke-static {p4, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lf0/c;->b:Lu3/l;

    iput-object p4, p0, Lf0/c;->c:LD3/I;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lf0/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf0/c;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;LA3/h;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lf0/c;->c(Landroid/content/Context;LA3/h;)Lc0/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;LA3/h;)Lc0/h;
    .locals 4

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lf0/c;->e:Lc0/h;

    if-nez p2, :cond_1

    iget-object p2, p0, Lf0/c;->d:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lf0/c;->e:Lc0/h;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lg0/e;->a:Lg0/e;

    iget-object v1, p0, Lf0/c;->b:Lu3/l;

    const-string v2, "applicationContext"

    invoke-static {p1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lf0/c;->c:LD3/I;

    new-instance v3, Lf0/c$a;

    invoke-direct {v3, p1, p0}, Lf0/c$a;-><init>(Landroid/content/Context;Lf0/c;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lg0/e;->b(Ld0/b;Ljava/util/List;LD3/I;Lu3/a;)Lc0/h;

    move-result-object p1

    iput-object p1, p0, Lf0/c;->e:Lc0/h;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lf0/c;->e:Lc0/h;

    invoke-static {p1}, Lv3/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    move-object p2, p1

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p1

    :cond_1
    :goto_2
    return-object p2
.end method
