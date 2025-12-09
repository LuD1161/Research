.class public abstract enum Lcom/google/gson/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Lcom/google/gson/p;

.field public static final enum f:Lcom/google/gson/p;

.field public static final synthetic g:[Lcom/google/gson/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/gson/p$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/p;->e:Lcom/google/gson/p;

    new-instance v1, Lcom/google/gson/p$b;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/gson/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gson/p;->f:Lcom/google/gson/p;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/gson/p;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/gson/p;->g:[Lcom/google/gson/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/p$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/gson/p;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/p;
    .locals 1

    const-class v0, Lcom/google/gson/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/p;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/p;
    .locals 1

    sget-object v0, Lcom/google/gson/p;->g:[Lcom/google/gson/p;

    invoke-virtual {v0}, [Lcom/google/gson/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/p;

    return-object v0
.end method
