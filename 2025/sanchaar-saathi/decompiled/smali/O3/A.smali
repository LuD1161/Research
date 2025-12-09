.class public final LO3/A;
.super LO3/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO3/A$a;
    }
.end annotation


# static fields
.field public static final i:LO3/A$a;

.field public static final j:LO3/r;


# instance fields
.field public final e:LO3/r;

.field public final f:LO3/h;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LO3/A$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO3/A$a;-><init>(Lv3/g;)V

    sput-object v0, LO3/A;->i:LO3/A$a;

    sget-object v0, LO3/r;->f:LO3/r$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "/"

    invoke-static {v0, v4, v2, v3, v1}, LO3/r$a;->e(LO3/r$a;Ljava/lang/String;ZILjava/lang/Object;)LO3/r;

    move-result-object v0

    sput-object v0, LO3/A;->j:LO3/r;

    return-void
.end method

.method public constructor <init>(LO3/r;LO3/h;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    const-string v0, "zipPath"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LO3/h;-><init>()V

    iput-object p1, p0, LO3/A;->e:LO3/r;

    iput-object p2, p0, LO3/A;->f:LO3/h;

    iput-object p3, p0, LO3/A;->g:Ljava/util/Map;

    iput-object p4, p0, LO3/A;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LO3/r;LO3/r;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LO3/r;Z)V
    .locals 0

    const-string p2, "dir"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(LO3/r;Z)V
    .locals 0

    const-string p2, "path"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(LO3/r;)LO3/g;
    .locals 14

    const-string v0, "path"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LO3/A;->m(LO3/r;)LO3/r;

    move-result-object p1

    iget-object v0, p0, LO3/A;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP3/h;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v12, LO3/g;

    invoke-virtual {p1}, LP3/h;->h()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, LP3/h;->h()Z

    move-result v3

    invoke-virtual {p1}, LP3/h;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LP3/h;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v5, v1

    :goto_0
    invoke-virtual {p1}, LP3/h;->e()Ljava/lang/Long;

    move-result-object v7

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, LO3/g;-><init>(ZZLO3/r;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILv3/g;)V

    invoke-virtual {p1}, LP3/h;->f()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    return-object v12

    :cond_2
    iget-object v1, p0, LO3/A;->f:LO3/h;

    iget-object v2, p0, LO3/A;->e:LO3/r;

    invoke-virtual {v1, v2}, LO3/h;->i(LO3/r;)LO3/f;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, LP3/h;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LO3/f;->w(J)LO3/y;

    move-result-object p1

    invoke-static {p1}, LO3/o;->b(LO3/y;)LO3/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-static {p1, v1}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    invoke-static {p1}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-static {p1, v12}, LP3/i;->h(LO3/d;LO3/g;)LO3/g;

    move-result-object p1

    return-object p1

    :cond_5
    throw v0
.end method

.method public i(LO3/r;)LO3/f;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(LO3/r;ZZ)LO3/f;
    .locals 0

    const-string p2, "file"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip entries are not writable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(LO3/r;)LO3/y;
    .locals 7

    const-string v0, "file"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LO3/A;->m(LO3/r;)LO3/r;

    move-result-object v0

    iget-object v1, p0, LO3/A;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP3/h;

    if-eqz v0, :cond_4

    iget-object p1, p0, LO3/A;->f:LO3/h;

    iget-object v1, p0, LO3/A;->e:LO3/r;

    invoke-virtual {p1, v1}, LO3/h;->i(LO3/r;)LO3/f;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, LP3/h;->f()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, LO3/f;->w(J)LO3/y;

    move-result-object v2

    invoke-static {v2}, LO3/o;->b(LO3/y;)LO3/d;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_0

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-static {v2, p1}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-static {v2}, LP3/i;->k(LO3/d;)V

    invoke-virtual {v0}, LP3/h;->d()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    new-instance p1, LP3/f;

    invoke-virtual {v0}, LP3/h;->g()J

    move-result-wide v3

    invoke-direct {p1, v2, v3, v4, v1}, LP3/f;-><init>(LO3/y;JZ)V

    goto :goto_2

    :cond_2
    new-instance p1, LO3/j;

    new-instance v3, LP3/f;

    invoke-virtual {v0}, LP3/h;->c()J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5, v1}, LP3/f;-><init>(LO3/y;JZ)V

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v3, v2}, LO3/j;-><init>(LO3/y;Ljava/util/zip/Inflater;)V

    new-instance v1, LP3/f;

    invoke-virtual {v0}, LP3/h;->g()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v3, v0}, LP3/f;-><init>(LO3/y;JZ)V

    move-object p1, v1

    :goto_2
    return-object p1

    :cond_3
    throw v1

    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(LO3/r;)LO3/r;
    .locals 2

    sget-object v0, LO3/A;->j:LO3/r;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LO3/r;->s(LO3/r;Z)LO3/r;

    move-result-object p1

    return-object p1
.end method
