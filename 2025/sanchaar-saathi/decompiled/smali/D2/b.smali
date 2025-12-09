.class public final enum LD2/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LD2/b;

.field public static final enum f:LD2/b;

.field public static final enum g:LD2/b;

.field public static final enum h:LD2/b;

.field public static final enum i:LD2/b;

.field public static final enum j:LD2/b;

.field public static final enum k:LD2/b;

.field public static final enum l:LD2/b;

.field public static final enum m:LD2/b;

.field public static final enum n:LD2/b;

.field public static final synthetic o:[LD2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, LD2/b;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD2/b;->e:LD2/b;

    new-instance v1, LD2/b;

    const-string v2, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, LD2/b;->f:LD2/b;

    new-instance v2, LD2/b;

    const-string v3, "BEGIN_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, LD2/b;->g:LD2/b;

    new-instance v3, LD2/b;

    const-string v4, "END_OBJECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, LD2/b;->h:LD2/b;

    new-instance v4, LD2/b;

    const-string v5, "NAME"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, LD2/b;->i:LD2/b;

    new-instance v5, LD2/b;

    const-string v6, "STRING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, LD2/b;->j:LD2/b;

    new-instance v6, LD2/b;

    const-string v7, "NUMBER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v6, LD2/b;->k:LD2/b;

    new-instance v7, LD2/b;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, LD2/b;->l:LD2/b;

    new-instance v8, LD2/b;

    const-string v9, "NULL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v8, LD2/b;->m:LD2/b;

    new-instance v9, LD2/b;

    const-string v10, "END_DOCUMENT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, LD2/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, LD2/b;->n:LD2/b;

    filled-new-array/range {v0 .. v9}, [LD2/b;

    move-result-object v0

    sput-object v0, LD2/b;->o:[LD2/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LD2/b;
    .locals 1

    const-class v0, LD2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LD2/b;

    return-object p0
.end method

.method public static values()[LD2/b;
    .locals 1

    sget-object v0, LD2/b;->o:[LD2/b;

    invoke-virtual {v0}, [LD2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LD2/b;

    return-object v0
.end method
