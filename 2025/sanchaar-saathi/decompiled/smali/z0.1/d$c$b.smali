.class public final enum Lz0/d$c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum e:Lz0/d$c$b;

.field public static final enum f:Lz0/d$c$b;

.field public static final enum g:Lz0/d$c$b;

.field public static final enum h:Lz0/d$c$b;

.field public static final enum i:Lz0/d$c$b;

.field public static final synthetic j:[Lz0/d$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz0/d$c$b;

    const-string v1, "ON_CONFIGURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz0/d$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz0/d$c$b;->e:Lz0/d$c$b;

    new-instance v0, Lz0/d$c$b;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz0/d$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz0/d$c$b;->f:Lz0/d$c$b;

    new-instance v0, Lz0/d$c$b;

    const-string v1, "ON_UPGRADE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz0/d$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz0/d$c$b;->g:Lz0/d$c$b;

    new-instance v0, Lz0/d$c$b;

    const-string v1, "ON_DOWNGRADE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz0/d$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz0/d$c$b;->h:Lz0/d$c$b;

    new-instance v0, Lz0/d$c$b;

    const-string v1, "ON_OPEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lz0/d$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz0/d$c$b;->i:Lz0/d$c$b;

    invoke-static {}, Lz0/d$c$b;->b()[Lz0/d$c$b;

    move-result-object v0

    sput-object v0, Lz0/d$c$b;->j:[Lz0/d$c$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[Lz0/d$c$b;
    .locals 5

    sget-object v0, Lz0/d$c$b;->e:Lz0/d$c$b;

    sget-object v1, Lz0/d$c$b;->f:Lz0/d$c$b;

    sget-object v2, Lz0/d$c$b;->g:Lz0/d$c$b;

    sget-object v3, Lz0/d$c$b;->h:Lz0/d$c$b;

    sget-object v4, Lz0/d$c$b;->i:Lz0/d$c$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lz0/d$c$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lz0/d$c$b;
    .locals 1

    const-class v0, Lz0/d$c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz0/d$c$b;

    return-object p0
.end method

.method public static values()[Lz0/d$c$b;
    .locals 1

    sget-object v0, Lz0/d$c$b;->j:[Lz0/d$c$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz0/d$c$b;

    return-object v0
.end method
