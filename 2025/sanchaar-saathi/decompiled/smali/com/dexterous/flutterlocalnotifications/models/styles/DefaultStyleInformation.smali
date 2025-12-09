.class public Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;
.super Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;
.source "SourceFile"


# instance fields
.field public htmlFormatBody:Ljava/lang/Boolean;

.field public htmlFormatTitle:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;-><init>()V

    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatTitle:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatBody:Ljava/lang/Boolean;

    return-void
.end method
