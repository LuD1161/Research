.class public final Lu0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lu0/c;


# direct methods
.method public constructor <init>(Lu0/c;)V
    .locals 1

    const-string v0, "autoCloser"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/d$a;->e:Lu0/c;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    sget-object v1, Lu0/d$a$g;->f:Lu0/d$a$g;

    invoke-virtual {v0, v1}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    return-void
.end method

.method public beginTransaction()V
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->j()Ly0/g;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ly0/g;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v1}, Lu0/c;->e()V

    throw v0
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->j()Ly0/g;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ly0/g;->beginTransactionNonExclusive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v1}, Lu0/c;->e()V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->d()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Ly0/k;
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu0/d$b;

    iget-object v1, p0, Lu0/d$a;->e:Lu0/c;

    invoke-direct {v0, p1, v1}, Lu0/d$b;-><init>(Ljava/lang/String;Lu0/c;)V

    return-object v0
.end method

.method public endTransaction()V
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->h()Ly0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->h()Ly0/g;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ly0/g;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->e()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v1}, Lu0/c;->e()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End transaction called but delegateDb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    new-instance v1, Lu0/d$a$b;

    invoke-direct {v1, p1}, Lu0/d$a$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    new-instance v1, Lu0/d$a$c;

    invoke-direct {v1, p1, p2}, Lu0/d$a$c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    sget-object v1, Lu0/d$a$a;->f:Lu0/d$a$a;

    invoke-virtual {v0, v1}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    sget-object v1, Lu0/d$a$f;->f:Lu0/d$a$f;

    invoke-virtual {v0, v1}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->h()Ly0/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    sget-object v1, Lu0/d$a$d;->n:Lu0/d$a$d;

    invoke-virtual {v0, v1}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->h()Ly0/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ly0/g;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    sget-object v1, Lu0/d$a$e;->f:Lu0/d$a$e;

    invoke-virtual {v0, v1}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->j()Ly0/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ly0/g;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Lu0/d$c;

    iget-object v1, p0, Lu0/d$a;->e:Lu0/c;

    invoke-direct {v0, p1, v1}, Lu0/d$c;-><init>(Landroid/database/Cursor;Lu0/c;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->e()V

    .line 4
    throw p1
.end method

.method public query(Ly0/j;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->j()Ly0/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ly0/g;->query(Ly0/j;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Lu0/d$c;

    iget-object v1, p0, Lu0/d$a;->e:Lu0/c;

    invoke-direct {v0, p1, v1}, Lu0/d$c;-><init>(Landroid/database/Cursor;Lu0/c;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->e()V

    .line 8
    throw p1
.end method

.method public query(Ly0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->j()Ly0/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ly0/g;->query(Ly0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance p2, Lu0/d$c;

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-direct {p2, p1, v0}, Lu0/d$c;-><init>(Landroid/database/Cursor;Lu0/c;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {p2}, Lu0/c;->e()V

    .line 12
    throw p1
.end method

.method public setTransactionSuccessful()V
    .locals 2

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    invoke-virtual {v0}, Lu0/c;->h()Ly0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ly0/g;->setTransactionSuccessful()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTransactionSuccessful called but delegateDb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8

    const-string v0, "table"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/d$a;->e:Lu0/c;

    new-instance v7, Lu0/d$a$h;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lu0/d$a$h;-><init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lu0/c;->g(Lu3/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
