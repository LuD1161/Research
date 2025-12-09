.class public final enum LX2/q$d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/q$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:LX2/q$d$a;

.field public static final enum f:LX2/q$d$a;

.field public static final enum g:LX2/q$d$a;

.field public static final synthetic h:[LX2/q$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LX2/q$d$a;

    const-string v1, "TEXTURE_WITH_VIRTUAL_FALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LX2/q$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/q$d$a;->e:LX2/q$d$a;

    new-instance v0, LX2/q$d$a;

    const-string v1, "TEXTURE_WITH_HYBRID_FALLBACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LX2/q$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/q$d$a;->f:LX2/q$d$a;

    new-instance v0, LX2/q$d$a;

    const-string v1, "HYBRID_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LX2/q$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX2/q$d$a;->g:LX2/q$d$a;

    invoke-static {}, LX2/q$d$a;->b()[LX2/q$d$a;

    move-result-object v0

    sput-object v0, LX2/q$d$a;->h:[LX2/q$d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LX2/q$d$a;
    .locals 3

    sget-object v0, LX2/q$d$a;->e:LX2/q$d$a;

    sget-object v1, LX2/q$d$a;->f:LX2/q$d$a;

    sget-object v2, LX2/q$d$a;->g:LX2/q$d$a;

    filled-new-array {v0, v1, v2}, [LX2/q$d$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LX2/q$d$a;
    .locals 1

    const-class v0, LX2/q$d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LX2/q$d$a;

    return-object p0
.end method

.method public static values()[LX2/q$d$a;
    .locals 1

    sget-object v0, LX2/q$d$a;->h:[LX2/q$d$a;

    invoke-virtual {v0}, [LX2/q$d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX2/q$d$a;

    return-object v0
.end method
