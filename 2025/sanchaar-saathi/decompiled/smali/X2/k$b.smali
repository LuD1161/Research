.class public final enum LX2/k$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum e:LX2/k$b;

.field public static final enum f:LX2/k$b;

.field public static final enum g:LX2/k$b;

.field public static final enum h:LX2/k$b;

.field public static final enum i:LX2/k$b;

.field public static final synthetic j:[LX2/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LX2/k$b;

    const-string v1, "DETACHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LX2/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/k$b;->e:LX2/k$b;

    new-instance v0, LX2/k$b;

    const-string v1, "RESUMED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LX2/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/k$b;->f:LX2/k$b;

    new-instance v0, LX2/k$b;

    const-string v1, "INACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LX2/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/k$b;->g:LX2/k$b;

    new-instance v0, LX2/k$b;

    const-string v1, "HIDDEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LX2/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/k$b;->h:LX2/k$b;

    new-instance v0, LX2/k$b;

    const-string v1, "PAUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LX2/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/k$b;->i:LX2/k$b;

    invoke-static {}, LX2/k$b;->b()[LX2/k$b;

    move-result-object v0

    sput-object v0, LX2/k$b;->j:[LX2/k$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LX2/k$b;
    .locals 5

    sget-object v0, LX2/k$b;->e:LX2/k$b;

    sget-object v1, LX2/k$b;->f:LX2/k$b;

    sget-object v2, LX2/k$b;->g:LX2/k$b;

    sget-object v3, LX2/k$b;->h:LX2/k$b;

    sget-object v4, LX2/k$b;->i:LX2/k$b;

    filled-new-array {v0, v1, v2, v3, v4}, [LX2/k$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LX2/k$b;
    .locals 1

    const-class v0, LX2/k$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LX2/k$b;

    return-object p0
.end method

.method public static values()[LX2/k$b;
    .locals 1

    sget-object v0, LX2/k$b;->j:[LX2/k$b;

    invoke-virtual {v0}, [LX2/k$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX2/k$b;

    return-object v0
.end method
