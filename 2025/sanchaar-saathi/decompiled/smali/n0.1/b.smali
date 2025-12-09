.class public final Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln0/a;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Set;

.field public volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln0/a;

    invoke-direct {v0}, Ln0/a;-><init>()V

    iput-object v0, p0, Ln0/b;->a:Ln0/a;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ln0/b;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ln0/b;->c:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Ln0/b;Ljava/lang/AutoCloseable;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->e(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public static final synthetic b(Ln0/b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ln0/b;->c:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic c(Ln0/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ln0/b;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-boolean v0, p0, Ln0/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ln0/b;->d:Z

    iget-object v0, p0, Ln0/b;->a:Ln0/a;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ln0/b;->c(Ln0/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-static {p0, v2}, Ln0/b;->a(Ln0/b;Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Ln0/b;->b(Ln0/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-static {p0, v2}, Ln0/b;->a(Ln0/b;Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ln0/b;->b(Ln0/b;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final e(Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
