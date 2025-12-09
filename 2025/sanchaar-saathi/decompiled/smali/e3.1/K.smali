.class public final enum Le3/K;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/K$a;
    }
.end annotation


# static fields
.field public static final f:Le3/K$a;

.field public static final enum g:Le3/K;

.field public static final enum h:Le3/K;

.field public static final enum i:Le3/K;

.field public static final synthetic j:[Le3/K;

.field public static final synthetic k:Lo3/a;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Le3/K;

    const-string v1, "PLATFORM_ENCODED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le3/K;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le3/K;->g:Le3/K;

    new-instance v0, Le3/K;

    const-string v1, "JSON_ENCODED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Le3/K;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le3/K;->h:Le3/K;

    new-instance v0, Le3/K;

    const-string v1, "UNEXPECTED_STRING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Le3/K;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le3/K;->i:Le3/K;

    invoke-static {}, Le3/K;->b()[Le3/K;

    move-result-object v0

    sput-object v0, Le3/K;->j:[Le3/K;

    invoke-static {v0}, Lo3/b;->a([Ljava/lang/Enum;)Lo3/a;

    move-result-object v0

    sput-object v0, Le3/K;->k:Lo3/a;

    new-instance v0, Le3/K$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le3/K$a;-><init>(Lv3/g;)V

    sput-object v0, Le3/K;->f:Le3/K$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Le3/K;->e:I

    return-void
.end method

.method public static final synthetic b()[Le3/K;
    .locals 3

    sget-object v0, Le3/K;->g:Le3/K;

    sget-object v1, Le3/K;->h:Le3/K;

    sget-object v2, Le3/K;->i:Le3/K;

    filled-new-array {v0, v1, v2}, [Le3/K;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Le3/K;
    .locals 1

    const-class v0, Le3/K;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le3/K;

    return-object p0
.end method

.method public static values()[Le3/K;
    .locals 1

    sget-object v0, Le3/K;->j:[Le3/K;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/K;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Le3/K;->e:I

    return v0
.end method
