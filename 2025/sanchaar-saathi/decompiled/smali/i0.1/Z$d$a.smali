.class public final enum Li0/Z$d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/Z$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:Li0/Z$d$a;

.field public static final enum f:Li0/Z$d$a;

.field public static final enum g:Li0/Z$d$a;

.field public static final synthetic h:[Li0/Z$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li0/Z$d$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li0/Z$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/Z$d$a;->e:Li0/Z$d$a;

    new-instance v0, Li0/Z$d$a;

    const-string v1, "ADDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li0/Z$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/Z$d$a;->f:Li0/Z$d$a;

    new-instance v0, Li0/Z$d$a;

    const-string v1, "REMOVING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Li0/Z$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/Z$d$a;->g:Li0/Z$d$a;

    invoke-static {}, Li0/Z$d$a;->b()[Li0/Z$d$a;

    move-result-object v0

    sput-object v0, Li0/Z$d$a;->h:[Li0/Z$d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[Li0/Z$d$a;
    .locals 3

    sget-object v0, Li0/Z$d$a;->e:Li0/Z$d$a;

    sget-object v1, Li0/Z$d$a;->f:Li0/Z$d$a;

    sget-object v2, Li0/Z$d$a;->g:Li0/Z$d$a;

    filled-new-array {v0, v1, v2}, [Li0/Z$d$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Li0/Z$d$a;
    .locals 1

    const-class v0, Li0/Z$d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li0/Z$d$a;

    return-object p0
.end method

.method public static values()[Li0/Z$d$a;
    .locals 1

    sget-object v0, Li0/Z$d$a;->h:[Li0/Z$d$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li0/Z$d$a;

    return-object v0
.end method
