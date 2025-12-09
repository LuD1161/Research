.class public final LZ0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ0/z;


# instance fields
.field public final a:Lu0/u;

.field public final b:Lu0/i;

.field public final c:Lu0/A;


# direct methods
.method public constructor <init>(Lu0/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/A;->a:Lu0/u;

    new-instance v0, LZ0/A$a;

    invoke-direct {v0, p0, p1}, LZ0/A$a;-><init>(LZ0/A;Lu0/u;)V

    iput-object v0, p0, LZ0/A;->b:Lu0/i;

    new-instance v0, LZ0/A$b;

    invoke-direct {v0, p0, p1}, LZ0/A$b;-><init>(LZ0/A;Lu0/u;)V

    iput-object v0, p0, LZ0/A;->c:Lu0/A;

    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(LZ0/y;)V
    .locals 1

    iget-object v0, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->d()V

    iget-object v0, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v0, p0, LZ0/A;->b:Lu0/i;

    invoke-virtual {v0, p1}, Lu0/i;->j(Ljava/lang/Object;)V

    iget-object p1, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->i()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->i()V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1, p2}, LZ0/z$a;->a(LZ0/z;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->d()V

    iget-object v0, p0, LZ0/A;->c:Lu0/A;

    invoke-virtual {v0}, Lu0/A;->b()Ly0/k;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Ly0/i;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Ly0/i;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->e()V

    :try_start_0
    invoke-interface {v0}, Ly0/k;->executeUpdateDelete()I

    iget-object p1, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->i()V

    iget-object p1, p0, LZ0/A;->c:Lu0/A;

    invoke-virtual {p1, v0}, Lu0/A;->h(Ly0/k;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {v1}, Lu0/u;->i()V

    iget-object v1, p0, LZ0/A;->c:Lu0/A;

    invoke-virtual {v1, v0}, Lu0/A;->h(Ly0/k;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu0/x;->e(Ljava/lang/String;I)Lu0/x;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lu0/x;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lu0/x;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, LZ0/A;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->d()V

    iget-object p1, p0, LZ0/A;->a:Lu0/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lw0/b;->b(Lu0/u;Ly0/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_2

    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lu0/x;->g()V

    return-object v3

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lu0/x;->g()V

    throw v1
.end method
