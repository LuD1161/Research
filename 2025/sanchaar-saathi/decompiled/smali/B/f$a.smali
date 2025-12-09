.class public final enum LB/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:LB/f$a;

.field public static final enum f:LB/f$a;

.field public static final enum g:LB/f$a;

.field public static final enum h:LB/f$a;

.field public static final enum i:LB/f$a;

.field public static final enum j:LB/f$a;

.field public static final enum k:LB/f$a;

.field public static final enum l:LB/f$a;

.field public static final synthetic m:[LB/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LB/f$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/f$a;->e:LB/f$a;

    new-instance v1, LB/f$a;

    const-string v2, "HORIZONTAL_DIMENSION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB/f$a;->f:LB/f$a;

    new-instance v2, LB/f$a;

    const-string v3, "VERTICAL_DIMENSION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LB/f$a;->g:LB/f$a;

    new-instance v3, LB/f$a;

    const-string v4, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LB/f$a;->h:LB/f$a;

    new-instance v4, LB/f$a;

    const-string v5, "RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, LB/f$a;->i:LB/f$a;

    new-instance v5, LB/f$a;

    const-string v6, "TOP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, LB/f$a;->j:LB/f$a;

    new-instance v6, LB/f$a;

    const-string v7, "BOTTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, LB/f$a;->k:LB/f$a;

    new-instance v7, LB/f$a;

    const-string v8, "BASELINE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, LB/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, LB/f$a;->l:LB/f$a;

    filled-new-array/range {v0 .. v7}, [LB/f$a;

    move-result-object v0

    sput-object v0, LB/f$a;->m:[LB/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB/f$a;
    .locals 1

    const-class v0, LB/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB/f$a;

    return-object p0
.end method

.method public static values()[LB/f$a;
    .locals 1

    sget-object v0, LB/f$a;->m:[LB/f$a;

    invoke-virtual {v0}, [LB/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB/f$a;

    return-object v0
.end method
