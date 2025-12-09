.class public final enum Lj0/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:Lj0/c$a;

.field public static final enum f:Lj0/c$a;

.field public static final enum g:Lj0/c$a;

.field public static final enum h:Lj0/c$a;

.field public static final enum i:Lj0/c$a;

.field public static final enum j:Lj0/c$a;

.field public static final enum k:Lj0/c$a;

.field public static final enum l:Lj0/c$a;

.field public static final enum m:Lj0/c$a;

.field public static final synthetic n:[Lj0/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj0/c$a;

    const-string v1, "PENALTY_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->e:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "PENALTY_DEATH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->f:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "DETECT_FRAGMENT_REUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->g:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "DETECT_FRAGMENT_TAG_USAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->h:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "DETECT_WRONG_NESTED_HIERARCHY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->i:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "DETECT_RETAIN_INSTANCE_USAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->j:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "DETECT_SET_USER_VISIBLE_HINT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->k:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "DETECT_TARGET_FRAGMENT_USAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->l:Lj0/c$a;

    new-instance v0, Lj0/c$a;

    const-string v1, "DETECT_WRONG_FRAGMENT_CONTAINER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lj0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj0/c$a;->m:Lj0/c$a;

    invoke-static {}, Lj0/c$a;->b()[Lj0/c$a;

    move-result-object v0

    sput-object v0, Lj0/c$a;->n:[Lj0/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[Lj0/c$a;
    .locals 9

    sget-object v0, Lj0/c$a;->e:Lj0/c$a;

    sget-object v1, Lj0/c$a;->f:Lj0/c$a;

    sget-object v2, Lj0/c$a;->g:Lj0/c$a;

    sget-object v3, Lj0/c$a;->h:Lj0/c$a;

    sget-object v4, Lj0/c$a;->i:Lj0/c$a;

    sget-object v5, Lj0/c$a;->j:Lj0/c$a;

    sget-object v6, Lj0/c$a;->k:Lj0/c$a;

    sget-object v7, Lj0/c$a;->l:Lj0/c$a;

    sget-object v8, Lj0/c$a;->m:Lj0/c$a;

    filled-new-array/range {v0 .. v8}, [Lj0/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj0/c$a;
    .locals 1

    const-class v0, Lj0/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj0/c$a;

    return-object p0
.end method

.method public static values()[Lj0/c$a;
    .locals 1

    sget-object v0, Lj0/c$a;->n:[Lj0/c$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj0/c$a;

    return-object v0
.end method
