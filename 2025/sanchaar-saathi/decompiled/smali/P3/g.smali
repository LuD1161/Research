.class public final LP3/g;
.super LO3/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP3/g$a;
    }
.end annotation


# static fields
.field public static final f:LP3/g$a;

.field public static final g:LO3/r;


# instance fields
.field public final e:Lh3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LP3/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP3/g$a;-><init>(Lv3/g;)V

    sput-object v0, LP3/g;->f:LP3/g$a;

    sget-object v0, LO3/r;->f:LO3/r$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "/"

    invoke-static {v0, v4, v2, v3, v1}, LO3/r$a;->e(LO3/r$a;Ljava/lang/String;ZILjava/lang/Object;)LO3/r;

    move-result-object v0

    sput-object v0, LP3/g;->g:LO3/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LO3/h;-><init>()V

    new-instance v0, LP3/g$b;

    invoke-direct {v0, p1}, LP3/g$b;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object p1

    iput-object p1, p0, LP3/g;->e:Lh3/d;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, LP3/g;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_0
    return-void
.end method

.method public static final synthetic m()LP3/g$a;
    .locals 1

    sget-object v0, LP3/g;->f:LP3/g$a;

    return-object v0
.end method

.method public static final synthetic n()LO3/r;
    .locals 1

    sget-object v0, LP3/g;->g:LO3/r;

    return-object v0
.end method

.method private final o(LO3/r;)LO3/r;
    .locals 2

    sget-object v0, LP3/g;->g:LO3/r;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LO3/r;->s(LO3/r;Z)LO3/r;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(LO3/r;LO3/r;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LO3/r;Z)V
    .locals 1

    const-string p2, "dir"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(LO3/r;Z)V
    .locals 1

    const-string p2, "path"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(LO3/r;)LO3/g;
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LP3/g;->f:LP3/g$a;

    invoke-static {v0, p1}, LP3/g$a;->a(LP3/g$a;LO3/r;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, LP3/g;->q(LO3/r;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, LP3/g;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/g;

    invoke-virtual {v2}, Lh3/g;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO3/h;

    invoke-virtual {v2}, Lh3/g;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO3/r;

    invoke-virtual {v2, p1}, LO3/r;->t(Ljava/lang/String;)LO3/r;

    move-result-object v2

    invoke-virtual {v3, v2}, LO3/h;->h(LO3/r;)LO3/g;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method public i(LO3/r;)LO3/f;
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LP3/g;->f:LP3/g$a;

    invoke-static {v0, p1}, LP3/g$a;->a(LP3/g$a;LO3/r;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LP3/g;->q(LO3/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LP3/g;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh3/g;

    invoke-virtual {v3}, Lh3/g;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO3/h;

    invoke-virtual {v3}, Lh3/g;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO3/r;

    :try_start_0
    invoke-virtual {v3, v0}, LO3/r;->t(Ljava/lang/String;)LO3/r;

    move-result-object v3

    invoke-virtual {v4, v3}, LO3/h;->i(LO3/r;)LO3/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(LO3/r;ZZ)LO3/f;
    .locals 0

    const-string p2, "file"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "resources are not writable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(LO3/r;)LO3/y;
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LP3/g;->f:LP3/g$a;

    invoke-static {v0, p1}, LP3/g$a;->a(LP3/g$a;LO3/r;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LP3/g;->q(LO3/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LP3/g;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh3/g;

    invoke-virtual {v3}, Lh3/g;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO3/h;

    invoke-virtual {v3}, Lh3/g;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO3/r;

    :try_start_0
    invoke-virtual {v3, v0}, LO3/r;->t(Ljava/lang/String;)LO3/r;

    move-result-object v3

    invoke-virtual {v4, v3}, LO3/h;->l(LO3/r;)LO3/y;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LP3/g;->e:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final q(LO3/r;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, LP3/g;->o(LO3/r;)LO3/r;

    move-result-object p1

    sget-object v0, LP3/g;->g:LO3/r;

    invoke-virtual {p1, v0}, LO3/r;->r(LO3/r;)LO3/r;

    move-result-object p1

    invoke-virtual {p1}, LO3/r;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
