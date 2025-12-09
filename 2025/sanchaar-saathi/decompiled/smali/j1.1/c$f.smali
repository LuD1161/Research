.class public Lj1/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c;->I(LY2/i;LY2/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lj1/c$i;

.field public final synthetic h:Ljava/lang/Boolean;

.field public final synthetic i:Lj1/a;

.field public final synthetic j:LY2/i;

.field public final synthetic k:Z

.field public final synthetic l:I

.field public final synthetic m:Lj1/c;


# direct methods
.method public constructor <init>(Lj1/c;ZLjava/lang/String;Lj1/c$i;Ljava/lang/Boolean;Lj1/a;LY2/i;ZI)V
    .locals 0

    iput-object p1, p0, Lj1/c$f;->m:Lj1/c;

    iput-boolean p2, p0, Lj1/c$f;->e:Z

    iput-object p3, p0, Lj1/c$f;->f:Ljava/lang/String;

    iput-object p4, p0, Lj1/c$f;->g:Lj1/c$i;

    iput-object p5, p0, Lj1/c$f;->h:Ljava/lang/Boolean;

    iput-object p6, p0, Lj1/c$f;->i:Lj1/a;

    iput-object p7, p0, Lj1/c$f;->j:LY2/i;

    iput-boolean p8, p0, Lj1/c$f;->k:Z

    iput p9, p0, Lj1/c$f;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lj1/c;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj1/c$f;->e:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lj1/c$f;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lj1/c$f;->g:Lj1/c$i;

    const-string v2, "sqlite_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open_failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lj1/c$f;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lj1/c$i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lj1/c$f;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj1/c$f;->i:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->h()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lj1/c$f;->i:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lj1/c;->i()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v2, p0, Lj1/c$f;->k:Z

    if-eqz v2, :cond_2

    sget-object v2, Lj1/c;->e:Ljava/util/Map;

    iget-object v3, p0, Lj1/c$f;->f:Ljava/lang/String;

    iget v4, p0, Lj1/c$f;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v2, Lj1/c;->o:Ljava/util/Map;

    iget v3, p0, Lj1/c$f;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lj1/c$f;->i:Lj1/a;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lj1/c$f;->i:Lj1/a;

    iget v1, v1, Lj1/a;->e:I

    invoke-static {v1}, Lj1/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Sqflite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lj1/c$f;->i:Lj1/a;

    invoke-virtual {v3}, Lj1/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj1/c$f;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lj1/c$f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lj1/c$f;->g:Lj1/c$i;

    iget v1, p0, Lj1/c$f;->l:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lj1/c;->y(IZZ)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj1/c$i;->a(Ljava/lang/Object;)V

    return-void

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :goto_3
    new-instance v2, Ll1/e;

    iget-object v3, p0, Lj1/c$f;->j:LY2/i;

    iget-object v4, p0, Lj1/c$f;->g:Lj1/c$i;

    invoke-direct {v2, v3, v4}, Ll1/e;-><init>(LY2/i;LY2/j$d;)V

    iget-object v3, p0, Lj1/c$f;->m:Lj1/c;

    iget-object v4, p0, Lj1/c$f;->i:Lj1/a;

    invoke-static {v3, v1, v2, v4}, Lj1/c;->h(Lj1/c;Ljava/lang/Exception;Ll1/f;Lj1/a;)V

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method
