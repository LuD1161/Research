.class public final enum Lz/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:Lz/i$a;

.field public static final enum f:Lz/i$a;

.field public static final enum g:Lz/i$a;

.field public static final enum h:Lz/i$a;

.field public static final enum i:Lz/i$a;

.field public static final synthetic j:[Lz/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lz/i$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz/i$a;->e:Lz/i$a;

    new-instance v1, Lz/i$a;

    const-string v2, "CONSTANT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lz/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz/i$a;->f:Lz/i$a;

    new-instance v2, Lz/i$a;

    const-string v3, "SLACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lz/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz/i$a;->g:Lz/i$a;

    new-instance v3, Lz/i$a;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lz/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz/i$a;->h:Lz/i$a;

    new-instance v4, Lz/i$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lz/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lz/i$a;->i:Lz/i$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lz/i$a;

    move-result-object v0

    sput-object v0, Lz/i$a;->j:[Lz/i$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz/i$a;
    .locals 1

    const-class v0, Lz/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz/i$a;

    return-object p0
.end method

.method public static values()[Lz/i$a;
    .locals 1

    sget-object v0, Lz/i$a;->j:[Lz/i$a;

    invoke-virtual {v0}, [Lz/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz/i$a;

    return-object v0
.end method
