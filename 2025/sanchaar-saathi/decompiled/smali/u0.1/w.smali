.class public Lu0/w;
.super Ly0/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/w$b;,
        Lu0/w$c;,
        Lu0/w$a;
    }
.end annotation


# static fields
.field public static final g:Lu0/w$a;


# instance fields
.field public c:Lu0/f;

.field public final d:Lu0/w$b;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu0/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu0/w$a;-><init>(Lv3/g;)V

    sput-object v0, Lu0/w;->g:Lu0/w$a;

    return-void
.end method

.method public constructor <init>(Lu0/f;Lu0/w$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityHash"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyHash"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lu0/w$b;->a:I

    invoke-direct {p0, v0}, Ly0/h$a;-><init>(I)V

    iput-object p1, p0, Lu0/w;->c:Lu0/f;

    iput-object p2, p0, Lu0/w;->d:Lu0/w$b;

    iput-object p3, p0, Lu0/w;->e:Ljava/lang/String;

    iput-object p4, p0, Lu0/w;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ly0/h$a;->b(Ly0/g;)V

    return-void
.end method

.method public d(Ly0/g;)V
    .locals 3

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lu0/w;->g:Lu0/w$a;

    invoke-virtual {v0, p1}, Lu0/w$a;->a(Ly0/g;)Z

    move-result v0

    iget-object v1, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {v1, p1}, Lu0/w$b;->a(Ly0/g;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {v0, p1}, Lu0/w$b;->g(Ly0/g;)Lu0/w$c;

    move-result-object v0

    iget-boolean v1, v0, Lu0/w$c;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lu0/w$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lu0/w;->j(Ly0/g;)V

    iget-object v0, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {v0, p1}, Lu0/w$b;->c(Ly0/g;)V

    return-void
.end method

.method public e(Ly0/g;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lu0/w;->g(Ly0/g;II)V

    return-void
.end method

.method public f(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ly0/h$a;->f(Ly0/g;)V

    invoke-virtual {p0, p1}, Lu0/w;->h(Ly0/g;)V

    iget-object v0, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {v0, p1}, Lu0/w$b;->d(Ly0/g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lu0/w;->c:Lu0/f;

    return-void
.end method

.method public g(Ly0/g;II)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/w;->c:Lu0/f;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lu0/f;->d:Lu0/u$e;

    invoke-virtual {v0, p2, p3}, Lu0/u$e;->d(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {p2, p1}, Lu0/w$b;->f(Ly0/g;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv0/b;

    invoke-virtual {p3, p1}, Lv0/b;->a(Ly0/g;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {p2, p1}, Lu0/w$b;->g(Ly0/g;)Lu0/w$c;

    move-result-object p2

    iget-boolean p3, p2, Lu0/w$c;->a:Z

    if-eqz p3, :cond_1

    iget-object p2, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {p2, p1}, Lu0/w$b;->e(Ly0/g;)V

    invoke-virtual {p0, p1}, Lu0/w;->j(Ly0/g;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Migration didn\'t properly handle: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lu0/w$c;->b:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lu0/w;->c:Lu0/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2, p3}, Lu0/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {p2, p1}, Lu0/w$b;->b(Ly0/g;)V

    iget-object p2, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {p2, p1}, Lu0/w$b;->a(Ly0/g;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ly0/g;)V
    .locals 3

    sget-object v0, Lu0/w;->g:Lu0/w$a;

    invoke-virtual {v0, p1}, Lu0/w$a;->b(Ly0/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ly0/a;

    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v1}, Ly0/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ly0/g;->query(Ly0/j;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1, v1}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lu0/w;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lu0/w;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu0/w;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {v0, p1}, Lu0/w$b;->g(Ly0/g;)Lu0/w$c;

    move-result-object v0

    iget-boolean v1, v0, Lu0/w$c;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lu0/w;->d:Lu0/w$b;

    invoke-virtual {v0, p1}, Lu0/w$b;->e(Ly0/g;)V

    invoke-virtual {p0, p1}, Lu0/w;->j(Ly0/g;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lu0/w$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Ly0/g;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ly0/g;)V
    .locals 1

    invoke-virtual {p0, p1}, Lu0/w;->i(Ly0/g;)V

    iget-object v0, p0, Lu0/w;->e:Ljava/lang/String;

    invoke-static {v0}, Lu0/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method
