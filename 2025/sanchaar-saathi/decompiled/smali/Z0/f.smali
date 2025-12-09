.class public final LZ0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ0/e;


# instance fields
.field public final a:Lu0/u;

.field public final b:Lu0/i;


# direct methods
.method public constructor <init>(Lu0/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/f;->a:Lu0/u;

    new-instance v0, LZ0/f$a;

    invoke-direct {v0, p0, p1}, LZ0/f$a;-><init>(LZ0/f;Lu0/u;)V

    iput-object v0, p0, LZ0/f;->b:Lu0/i;

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu0/x;->e(Ljava/lang/String;I)Lu0/x;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lu0/x;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lu0/x;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, LZ0/f;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->d()V

    iget-object p1, p0, LZ0/f;->a:Lu0/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lw0/b;->b(Lu0/u;Ly0/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lu0/x;->g()V

    return-object v2

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lu0/x;->g()V

    throw v1
.end method

.method public b(LZ0/d;)V
    .locals 1

    iget-object v0, p0, LZ0/f;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->d()V

    iget-object v0, p0, LZ0/f;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v0, p0, LZ0/f;->b:Lu0/i;

    invoke-virtual {v0, p1}, Lu0/i;->j(Ljava/lang/Object;)V

    iget-object p1, p0, LZ0/f;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LZ0/f;->a:Lu0/u;

    invoke-virtual {p1}, Lu0/u;->i()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LZ0/f;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->i()V

    throw p1
.end method
