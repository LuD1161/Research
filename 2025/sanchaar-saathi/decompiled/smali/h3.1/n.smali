.class public final Lh3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/n;

    invoke-direct {v0}, Lh3/n;-><init>()V

    sput-object v0, Lh3/n;->a:Lh3/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
