.class public final LR0/c;
.super Lu0/u$b;
.source "SourceFile"


# static fields
.field public static final a:LR0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR0/c;

    invoke-direct {v0}, LR0/c;-><init>()V

    sput-object v0, LR0/c;->a:LR0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu0/u$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lu0/u$b;->c(Ly0/g;)V

    invoke-interface {p1}, Ly0/g;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, LR0/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    invoke-interface {p1}, Ly0/g;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ly0/g;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ly0/g;->endTransaction()V

    throw v0
.end method

.method public final d()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, LR0/z;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LR0/c;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
