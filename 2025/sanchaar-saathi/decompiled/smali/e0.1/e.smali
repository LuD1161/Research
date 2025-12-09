.class public final Le0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/x;


# instance fields
.field public final a:LO3/h;

.field public final b:LO3/r;

.field public final c:Le0/c;

.field public final d:Lc0/n;

.field public final e:Lu3/a;

.field public final f:Le0/a;

.field public final g:LM3/a;


# direct methods
.method public constructor <init>(LO3/h;LO3/r;Le0/c;Lc0/n;Lu3/a;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinator"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClose"

    invoke-static {p5, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/e;->a:LO3/h;

    iput-object p2, p0, Le0/e;->b:LO3/r;

    iput-object p3, p0, Le0/e;->c:Le0/c;

    iput-object p4, p0, Le0/e;->d:Lc0/n;

    iput-object p5, p0, Le0/e;->e:Lu3/a;

    new-instance p1, Le0/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le0/a;-><init>(Z)V

    iput-object p1, p0, Le0/e;->f:Le0/a;

    const/4 p1, 0x1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, LM3/c;->b(ZILjava/lang/Object;)LM3/a;

    move-result-object p1

    iput-object p1, p0, Le0/e;->g:LM3/a;

    return-void
.end method


# virtual methods
.method public a()Lc0/n;
    .locals 1

    iget-object v0, p0, Le0/e;->d:Lc0/n;

    return-object v0
.end method

.method public c(Lu3/p;Ll3/e;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Le0/e$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le0/e$b;

    iget v1, v0, Le0/e$b;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le0/e$b;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Le0/e$b;

    invoke-direct {v0, p0, p2}, Le0/e$b;-><init>(Le0/e;Ll3/e;)V

    :goto_0
    iget-object p2, v0, Le0/e$b;->l:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le0/e$b;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le0/e$b;->k:Ljava/lang/Object;

    check-cast p1, Lc0/b;

    iget-object v1, v0, Le0/e$b;->j:Ljava/lang/Object;

    check-cast v1, LO3/r;

    iget-object v2, v0, Le0/e$b;->i:Ljava/lang/Object;

    check-cast v2, LM3/a;

    iget-object v0, v0, Le0/e$b;->h:Ljava/lang/Object;

    check-cast v0, Le0/e;

    :try_start_0
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Le0/e$b;->k:Ljava/lang/Object;

    check-cast p1, LM3/a;

    iget-object v2, v0, Le0/e$b;->j:Ljava/lang/Object;

    check-cast v2, LO3/r;

    iget-object v5, v0, Le0/e$b;->i:Ljava/lang/Object;

    check-cast v5, Lu3/p;

    iget-object v7, v0, Le0/e$b;->h:Ljava/lang/Object;

    check-cast v7, Le0/e;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v5

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le0/e;->f()V

    iget-object p2, p0, Le0/e;->b:LO3/r;

    invoke-virtual {p2}, LO3/r;->q()LO3/r;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object p2, p0, Le0/e;->a:LO3/h;

    invoke-virtual {p2, v2, v3}, LO3/h;->b(LO3/r;Z)V

    iget-object p2, p0, Le0/e;->g:LM3/a;

    iput-object p0, v0, Le0/e$b;->h:Ljava/lang/Object;

    iput-object p1, v0, Le0/e$b;->i:Ljava/lang/Object;

    iput-object v2, v0, Le0/e$b;->j:Ljava/lang/Object;

    iput-object p2, v0, Le0/e$b;->k:Ljava/lang/Object;

    iput v5, v0, Le0/e$b;->n:I

    invoke-interface {p2, v6, v0}, LM3/a;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v7, p0

    :goto_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v7, Le0/e;->b:LO3/r;

    invoke-virtual {v8}, LO3/r;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, LO3/r;->t(Ljava/lang/String;)LO3/r;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v5, v7, Le0/e;->a:LO3/h;

    invoke-virtual {v5, v2, v3}, LO3/h;->f(LO3/r;Z)V

    new-instance v3, Le0/g;

    iget-object v5, v7, Le0/e;->a:LO3/h;

    iget-object v8, v7, Le0/e;->c:Le0/c;

    invoke-direct {v3, v5, v2, v8}, Le0/g;-><init>(LO3/h;LO3/r;Le0/c;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-object v7, v0, Le0/e$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Le0/e$b;->i:Ljava/lang/Object;

    iput-object v2, v0, Le0/e$b;->j:Ljava/lang/Object;

    iput-object v3, v0, Le0/e$b;->k:Ljava/lang/Object;

    iput v4, v0, Le0/e$b;->n:I

    invoke-interface {p1, v3, v0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v2

    move-object p1, v3

    move-object v0, v7

    move-object v2, p2

    :goto_2
    :try_start_4
    sget-object p2, Lh3/n;->a:Lh3/n;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {p1}, Lc0/b;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p1, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    if-nez p1, :cond_7

    :try_start_6
    iget-object p1, v0, Le0/e;->a:LO3/h;

    invoke-virtual {p1, v1}, LO3/h;->g(LO3/r;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v0, Le0/e;->a:LO3/h;

    iget-object p2, v0, Le0/e;->b:LO3/r;

    invoke-virtual {p1, v1, p2}, LO3/h;->a(LO3/r;LO3/r;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p2, v2

    goto :goto_8

    :catch_0
    move-exception p1

    move-object v7, v0

    move-object p2, v2

    move-object v2, v1

    goto :goto_7

    :cond_6
    :goto_4
    :try_start_7
    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-interface {v2, v6}, LM3/a;->a(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_7
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_3
    move-exception p1

    move-object v1, v2

    move-object v0, v7

    move-object v2, p2

    move-object p2, p1

    move-object p1, v3

    :goto_5
    :try_start_9
    invoke-interface {p1}, Lc0/b;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-static {p2, p1}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_5
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    :goto_7
    :try_start_b
    iget-object v0, v7, Le0/e;->a:LO3/h;

    invoke-virtual {v0, v2}, LO3/h;->g(LO3/r;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_8

    :try_start_c
    iget-object v0, v7, Le0/e;->a:LO3/h;

    invoke-virtual {v0, v2}, LO3/h;->e(LO3/r;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catch_2
    :cond_8
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_8
    invoke-interface {p2, v6}, LM3/a;->a(Ljava/lang/Object;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "must have a parent path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Le0/e;->f:Le0/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le0/a;->b(Z)V

    iget-object v0, p0, Le0/e;->e:Lu3/a;

    invoke-interface {v0}, Lu3/a;->c()Ljava/lang/Object;

    return-void
.end method

.method public d(Lu3/q;Ll3/e;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Le0/e$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le0/e$a;

    iget v1, v0, Le0/e$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le0/e$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Le0/e$a;

    invoke-direct {v0, p0, p2}, Le0/e$a;-><init>(Le0/e;Ll3/e;)V

    :goto_0
    iget-object p2, v0, Le0/e$a;->k:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le0/e$a;->m:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Le0/e$a;->j:Z

    iget-object v1, v0, Le0/e$a;->i:Ljava/lang/Object;

    check-cast v1, Lc0/b;

    iget-object v0, v0, Le0/e$a;->h:Ljava/lang/Object;

    check-cast v0, Le0/e;

    :try_start_0
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le0/e;->f()V

    iget-object p2, p0, Le0/e;->g:LM3/a;

    invoke-static {p2, v4, v3, v4}, LM3/a$a;->a(LM3/a;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p2

    :try_start_1
    new-instance v2, Le0/b;

    iget-object v5, p0, Le0/e;->a:LO3/h;

    iget-object v6, p0, Le0/e;->b:LO3/r;

    iget-object v7, p0, Le0/e;->c:Le0/c;

    invoke-direct {v2, v5, v6, v7}, Le0/b;-><init>(LO3/h;LO3/r;Le0/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-static {p2}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object p0, v0, Le0/e$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le0/e$a;->i:Ljava/lang/Object;

    iput-boolean p2, v0, Le0/e$a;->j:Z

    iput v3, v0, Le0/e$a;->m:I

    invoke-interface {p1, v2, v5, v0}, Lu3/q;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, v2

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_1
    :try_start_3
    invoke-interface {v1}, Lc0/b;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_2
    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, v0, Le0/e;->g:LM3/a;

    invoke-static {p1, v4, v3, v4}, LM3/a$a;->b(LM3/a;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_4
    return-object p2

    :cond_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v0, p0

    move-object v1, v2

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_3
    :try_start_5
    invoke-interface {v1}, Lc0/b;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_6
    invoke-static {p2, v1}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_5
    move-exception p1

    move-object v0, p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_5
    if-eqz p1, :cond_6

    iget-object p1, v0, Le0/e;->g:LM3/a;

    invoke-static {p1, v4, v3, v4}, LM3/a$a;->b(LM3/a;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_6
    throw p2
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Le0/e;->f:Le0/a;

    invoke-virtual {v0}, Le0/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StorageConnection has already been disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
