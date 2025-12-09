.class public final enum LN2/u$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum e:LN2/u$e;

.field public static final enum f:LN2/u$e;

.field public static final enum g:LN2/u$e;

.field public static final enum h:LN2/u$e;

.field public static final synthetic i:[LN2/u$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LN2/u$e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LN2/u$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/u$e;->e:LN2/u$e;

    new-instance v0, LN2/u$e;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LN2/u$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/u$e;->f:LN2/u$e;

    new-instance v0, LN2/u$e;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LN2/u$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/u$e;->g:LN2/u$e;

    new-instance v0, LN2/u$e;

    const-string v1, "BOTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LN2/u$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/u$e;->h:LN2/u$e;

    invoke-static {}, LN2/u$e;->b()[LN2/u$e;

    move-result-object v0

    sput-object v0, LN2/u$e;->i:[LN2/u$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LN2/u$e;
    .locals 4

    sget-object v0, LN2/u$e;->e:LN2/u$e;

    sget-object v1, LN2/u$e;->f:LN2/u$e;

    sget-object v2, LN2/u$e;->g:LN2/u$e;

    sget-object v3, LN2/u$e;->h:LN2/u$e;

    filled-new-array {v0, v1, v2, v3}, [LN2/u$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LN2/u$e;
    .locals 1

    const-class v0, LN2/u$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN2/u$e;

    return-object p0
.end method

.method public static values()[LN2/u$e;
    .locals 1

    sget-object v0, LN2/u$e;->i:[LN2/u$e;

    invoke-virtual {v0}, [LN2/u$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN2/u$e;

    return-object v0
.end method
