.class public final enum Lu0/u$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation


# static fields
.field public static final enum e:Lu0/u$d;

.field public static final enum f:Lu0/u$d;

.field public static final enum g:Lu0/u$d;

.field public static final synthetic h:[Lu0/u$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu0/u$d;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu0/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu0/u$d;->e:Lu0/u$d;

    new-instance v0, Lu0/u$d;

    const-string v1, "TRUNCATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu0/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu0/u$d;->f:Lu0/u$d;

    new-instance v0, Lu0/u$d;

    const-string v1, "WRITE_AHEAD_LOGGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lu0/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu0/u$d;->g:Lu0/u$d;

    invoke-static {}, Lu0/u$d;->b()[Lu0/u$d;

    move-result-object v0

    sput-object v0, Lu0/u$d;->h:[Lu0/u$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[Lu0/u$d;
    .locals 3

    sget-object v0, Lu0/u$d;->e:Lu0/u$d;

    sget-object v1, Lu0/u$d;->f:Lu0/u$d;

    sget-object v2, Lu0/u$d;->g:Lu0/u$d;

    filled-new-array {v0, v1, v2}, [Lu0/u$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu0/u$d;
    .locals 1

    const-class v0, Lu0/u$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu0/u$d;

    return-object p0
.end method

.method public static values()[Lu0/u$d;
    .locals 1

    sget-object v0, Lu0/u$d;->h:[Lu0/u$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu0/u$d;

    return-object v0
.end method


# virtual methods
.method public final f(Landroid/app/ActivityManager;)Z
    .locals 0

    invoke-static {p1}, Ly0/c;->b(Landroid/app/ActivityManager;)Z

    move-result p1

    return p1
.end method

.method public final k(Landroid/content/Context;)Lu0/u$d;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lu0/u$d;->e:Lu0/u$d;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Lu0/u$d;->f(Landroid/app/ActivityManager;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lu0/u$d;->g:Lu0/u$d;

    return-object p1

    :cond_1
    sget-object p1, Lu0/u$d;->f:Lu0/u$d;

    return-object p1
.end method
