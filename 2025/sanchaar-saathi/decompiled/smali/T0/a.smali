.class public abstract LT0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT0/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LT0/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;LZ0/m;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->G()LZ0/j;

    move-result-object p1

    invoke-interface {p1, p2}, LZ0/j;->e(LZ0/m;)LZ0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, LZ0/i;->c:I

    invoke-static {p0, p2, v0}, LT0/a;->b(Landroid/content/Context;LZ0/m;I)V

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object p0

    sget-object v0, LT0/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing SystemIdInfo for workSpecId ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, LZ0/j;->a(LZ0/m;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;LZ0/m;I)V
    .locals 5

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/a;->b(Landroid/content/Context;LZ0/m;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x24000000

    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v1

    sget-object v2, LT0/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling existing alarm with (workSpecId, systemId) ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;LZ0/m;J)V
    .locals 2

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->G()LZ0/j;

    move-result-object v0

    invoke-interface {v0, p2}, LZ0/j;->e(LZ0/m;)LZ0/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p1, v1, LZ0/i;->c:I

    invoke-static {p0, p2, p1}, LT0/a;->b(Landroid/content/Context;LZ0/m;I)V

    iget p1, v1, LZ0/i;->c:I

    invoke-static {p0, p2, p1, p3, p4}, LT0/a;->d(Landroid/content/Context;LZ0/m;IJ)V

    goto :goto_0

    :cond_0
    new-instance v1, La1/k;

    invoke-direct {v1, p1}, La1/k;-><init>(Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {v1}, La1/k;->c()I

    move-result p1

    invoke-static {p2, p1}, LZ0/l;->a(LZ0/m;I)LZ0/i;

    move-result-object v1

    invoke-interface {v0, v1}, LZ0/j;->c(LZ0/i;)V

    invoke-static {p0, p2, p1, p3, p4}, LT0/a;->d(Landroid/content/Context;LZ0/m;IJ)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;LZ0/m;IJ)V
    .locals 2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/a;->b(Landroid/content/Context;LZ0/m;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0xc000000

    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {v0, p1, p3, p4, p0}, LT0/a$a;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
