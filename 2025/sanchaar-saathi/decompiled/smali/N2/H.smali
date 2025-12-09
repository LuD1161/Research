.class public final enum LN2/H;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LN2/H;

.field public static final enum f:LN2/H;

.field public static final enum g:LN2/H;

.field public static final synthetic h:[LN2/H;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LN2/H;

    const-string v1, "surface"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LN2/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/H;->e:LN2/H;

    new-instance v0, LN2/H;

    const-string v1, "texture"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LN2/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/H;->f:LN2/H;

    new-instance v0, LN2/H;

    const-string v1, "image"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LN2/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/H;->g:LN2/H;

    invoke-static {}, LN2/H;->b()[LN2/H;

    move-result-object v0

    sput-object v0, LN2/H;->h:[LN2/H;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LN2/H;
    .locals 3

    sget-object v0, LN2/H;->e:LN2/H;

    sget-object v1, LN2/H;->f:LN2/H;

    sget-object v2, LN2/H;->g:LN2/H;

    filled-new-array {v0, v1, v2}, [LN2/H;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LN2/H;
    .locals 1

    const-class v0, LN2/H;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN2/H;

    return-object p0
.end method

.method public static values()[LN2/H;
    .locals 1

    sget-object v0, LN2/H;->h:[LN2/H;

    invoke-virtual {v0}, [LN2/H;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN2/H;

    return-object v0
.end method
